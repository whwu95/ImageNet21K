## Obtaining the Original Dataset
Request and obtain the original ImageNet dataset from [here](http://www.image-net.org/request) ('fall11_whole.tar').
The file contains all original images and classes, at full resolution. Its size is 1.31 TB.

<!--you can use this [source](https://academictorrents.com/details/564a77c1e1119da199ff32622a1609431b9f1c47).-->

## Processing ImageNet-21K to ImageNet-21K-P
For preprocessing ImageNet-21K (see the article for more details), you can use following [script](./processing_script.sh).
Make sure you update the target directory in the script, and also the file resize.py.

When you finish the preprocessing stage, you should have a dataset with 11221 classes - ImageNet-21K-P.