## Obtaining the Original Dataset
First make sure to request and obtain access to the original ImageNet dataset via [here](http://www.image-net.org/request).  
Also make sure you read and comply with terms of access document in [here](http://www.image-net.org/download).

Only after you follow these steps, you are legally allowed to proceed and download the original ImageNet dataset. If the original download links are not available,
you can use this [source](https://academictorrents.com/details/564a77c1e1119da199ff32622a1609431b9f1c47).

## Processing ImageNet-21K to ImageNet-21K-P
For preprocessing ImageNet-21K (see the article for more details), you can use following [script](./processing_script.sh).
Make sure you update the target directory in the script, and in resize.py.
When you finish the preprocessing stage, you should have a dataset with 11221 classes - ImageNet-21K-P.


## Validating Files

You can also compare and validate the actual files in you train and validation set to:
```
./resources/imagenet21K_P_train_folder_index.pkl
./resources/imagenet21K_P_val_folder_index.pkl
```
(You can use the script [validating_files.py](./validating_files.py) script to process the .pkl files)