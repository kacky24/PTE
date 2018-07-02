# PTE
This is an implementation of the PTE model for learning predictive text embeddings [(PTE: Predictive Text Embedding through Large-scale Heterogeneous Text Networks)](https://arxiv.org/abs/1508.00200). 

The codes consist of three parts. Codes in the "text2hin" folder are used to generate heterogeneous text networks from raw text data. We put the codes of the PTE model in the "pte" folder, which learns predictive word representations given a heterogeneous text network. After getting the word representations, the "text2vec" folder will be used to infer the embeddings of other text data, e.g., documents, sentences.

We also provide four datasets used in the PTE paper, which are the 20 newsgroups (20NG), IMDB (IMDB), DBLP titles (DBLP), moview review (MR) datasets. The data can be found in the "data" folder.

## Install
Our codes rely on two external packages, which are the Eigen package and the GSL package.

#### Eigen
The [Eigen](http://eigen.tuxfamily.org/index.php?title=Main_Page) package is used for matrix operations. To run our codes, users need to download the Eigen package and modify the package path in the makefile.

#### GSL
The [GSL](https://www.gnu.org/software/gsl/) package is used to generate random numbers. After installing the package, users also need to modify the package path in the makefile. 

## Compile
After installing the two packages and modifying the package paths, users may go to every folder and use the makefile to compile the codes.

## Data
#### userとcontentの2部グラフの場合
- cu.node
2部グラフのノードを順番に並べる
- user.node
userノードのみを順番に並べる
- cu.hin
content user 1 d と並べる

## Running
To run the PTE model, users may directly use the example script (run.sh) we provide. In this script, we will first construct the heterogeneous text networks based on the training files. Then we will call the PTE model to learn predictive word representations, which will be further used to infer the embeddings of other text data.
