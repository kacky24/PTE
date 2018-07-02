# bipartite network embedding
Bipartite network embedding method used in [(PTE: Predictive Text Embedding through Large-scale Heterogeneous Text Networks)](https://arxiv.org/abs/1508.00200). 

## Install
Our codes rely on two external packages, which are the Eigen package and the GSL package.

#### Eigen
The [Eigen](http://eigen.tuxfamily.org/index.php?title=Main_Page) package is used for matrix operations. To run our codes, users need to download the Eigen package and modify the package path in the makefile.

#### GSL
The [GSL](https://www.gnu.org/software/gsl/) package is used to generate random numbers. After installing the package, users also need to modify the package path in the makefile. 

## Compile
After installing the two packages and modifying the package paths, users may use the makefile to compile the codes.

## Data
#### userとcontentの2部グラフの場合
- cu.node
：2部グラフのノードを順番に並べる([sample](https://github.com/kacky24/bipartite_network_embedding/blob/master/workspace/cu_sample.node))
- user.node
：userノードのみを順番に並べる([sample](https://github.com/kacky24/bipartite_network_embedding/blob/master/workspace/user_sample.node))
- cu.hin
：content user 1 d と並べる([sample](https://github.com/kacky24/bipartite_network_embedding/blob/master/workspace/cu.hin))

## Running
To run the model, users may directly use the example script (run.sh) we provide.
