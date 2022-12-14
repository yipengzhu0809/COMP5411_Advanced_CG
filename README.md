# COMP5411 Advanced Computer Graphics

main. cpp 

mesh. cpp: All the mesh functions

util. cpp: Some mathematical operations functions

## Assigment0

* Collect the status of the mesh model

  * according to Mesh::loadMeshFile(const std::string filename) and void Mesh::addFace(int v1, int v2, int v3)

  * In the following code, the recounted boundary half-edge was merged, and the half-edge along the boundary would not be merged

    ```c++
    // Merge boundary if needed, because for every edge, it'll be counted forth because it has two face and each count twice
       //so every bhedge, if it is not the real bhedge, it shouldn't be couted
    for (int i = 0; i < 3; ++i) {
       Vertex* start = bhedge[i]->start();
       Vertex* end = bhedge[i]->end();
    
       for (int j = 0; j < end->adjHEdges.size(); ++j) {
          HEdge* curr = end->adjHEdges[j];
          if (curr->isBoundary() && curr->end() == start) {
             _setPrevNext(bhedge[i]->prev(), curr->next());//a good merge of the unreal bhedge, make the real bhedge connect naturally
             _setPrevNext(curr->prev(), bhedge[i]->next());
             _setTwin(bhedge[i]->twin(), curr->twin());
             bhedge[i]->setStart(nullptr); // Mark as unused, not real bhedge
             curr->setStart(nullptr); // Mark as unused
                   time1=time1+1;
                   break;
          }
       }
    }
    // Finally add hedges and faces to list
    	for (int i = 0; i < 3; ++i) {
    		mHEdgeList.push_back(hedge[i]);
    		mBHEdgeList.push_back(bhedge[i]);
    	}
    	mFaceList.push_back(face);
    ```

  * The following relationships are recorded:

    * connect prev-next pointers of every face
    * Connect twin pointers of every face
    * Connect start pointers for bhedge and hedge of every face
    * connect vertex and its next hedge
    * Connect face and hedge(clockwise)
    * Connect vertex with its adjacent bhedge and hedge

* Count the boundary loop 

* Count the connected component

* Compute the Normal of every Vertex

  * In the following code, OneRingHEdge orhe(v) represents one of the adjacent edges  of vertex v 

  * In the following code, orhe.nextHEdge() can return one of the adjacent edges and with each call, his return value is moved to the next adjacent edge until all adjacent edges are traversed.

  * ```c++
    std::vector<HEdge *> adjHEdgeList;
    //define neighbor Hedge
    OneRingHEdge orhe(v); //*nextHEdge has been assigned at the time of declaration
    HEdge *curr = nullptr;
    while (curr = orhe.nextHEdge())
    {
        adjHEdgeList.push_back(curr);
    }
    ```

  * Compute per-vertex normal using the neighboring areas.

## Assignment 1

* Implement Explicit Laplacian smoothing:

  * Corresponding function in the code is Mesh::umbrellaSmooth()

  * Implement both uniform weights and cotangent weights

  * In the following code, OneRingVertex orv(vert) represents one of the adjacent vertexes of vertex v

  * ```c++
    std::vector<Vertex *> adjVertices;
    OneRingVertex orv(vert);
    Vertex *curr = nullptr;
    while (curr = orv.nextVertex()) {
        adjVertices.push_back(curr);
    }
    ```

  * In the following code, class OneRingVertex{}, in fact, its private storage is Oneringhedge, which is used to implement the traversal of adjacent vertices using its function.

  * ```c++
    class OneRingVertex {
    public:
       OneRingVertex(const Vertex* v);
    
       // Iterator
       Vertex* nextVertex();
    
    private:
       OneRingHEdge ring;
    };
    ```

* ![Explicit Laplacian Smoothing](https://github.com/yipengzhu0809/COMP5411_Advanced_CG/blob/main/doc/Explicit%20Laplacian%20Smoothing.png)
* ![Weighting schemes](https://github.com/yipengzhu0809/COMP5411_Advanced_CG/blob/main/doc/Weighting%20schemes.png)

* Implement Implicit Laplacian s
  * Corresponding function in the code is Mesh::implicitUmbrellaSmooth()
  * Implement both uniform weights and cotangent weights
* ![Screen Shot 2022-09-25 at 10.49.07 AM](https://github.com/yipengzhu0809/COMP5411_Advanced_CG/blob/main/doc/Implicit%20Laplacian%20Smoothing.png)
* ![;](https://github.com/yipengzhu0809/COMP5411_Advanced_CG/blob/main/doc/matrix%20element%20of%20L.png)
* Use Biconjugate gradient method to solve the linear system:

![Screen Shot 2022-09-25 at 10.52.01 AM](https://github.com/yipengzhu0809/COMP5411_Advanced_CG/blob/main/doc/Biconjugate%20gradient%20method.png)

## Assignment 2

* Implement the na??ve laplacian surface editing scheme

  * Build the matrix of the linear system for deformation and do factorization, in order to reuse and speed up in Deformer::deform()
  * Use the following code to complement the factorization:

  ```c++
  if (systemMat.nonZeros() > 0) {
     mCholeskySolver = new Eigen::SimplicialLDLT< Eigen::SparseMatrix< double > >();
     mCholeskySolver->compute(systemMat);
     if (mCholeskySolver->info() != Eigen::Success) {
        // Decomposition failed
        std::cout << "Sparse decomposition failed\n";
     } else {
        std::cout << "Sparse decomposition succeeded\n";
     }
  }
  ```

  * Use the following code to generate contingent weighting Laplacian corrdinates:

  ```c++
  for (int k = 0; k < n; ++k) {
          const Eigen::Vector3f &prev = adjVertices[k]->position();
          const Eigen::Vector3f &curr = adjVertices[(k + 1) % n]->position();
          const Eigen::Vector3f &next = adjVertices[(k + 2) % n]->position();
          double cot1 = triangleCot(vert->position(), prev, curr);
          double cot2 = triangleCot(vert->position(), next, curr);
          double weight = 0.5 * (cot1 + cot2);
          weights[(k + 1) % n] = weight;
          weightSum += weight;
      }
      Eigen::Vector3d delta_i = -vert->position().cast<double>();
      for (int k = 0; k < n; ++k) {
          int j = adjVertices[k]->index();
          mA.insert(i, j) = weights[k] / weightSum;
          delta_i += weights[k] / weightSum * adjVertices[k]->position().cast<double>();
      }
      mA.insert(i, i) = -1;
      mB.row(i) = delta_i;
  }
  
  for (int k = 0; k < numConstraints; ++k) {
      int i = mRoiList[k]->index();
      mA.insert(numVertices + k, i) = 1;
  ```