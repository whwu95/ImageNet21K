#  pre-trained models

We provide a collection of models trained with semantic softmax on ImageNet-21K-P dataset.


| Backbone  |  Semantic top-1 Accuracy [%] |
| :------------: | :--------------: |
[MobilenetV3_large_100](https://miil-public-eu.oss-eu-central-1.aliyuncs.com/model-zoo/ImageNet_21K_P/mobilenetv3_large_100.pth) | 73.1 |
[ResNet50](https://miil-public-eu.oss-eu-central-1.aliyuncs.com/model-zoo/ImageNet_21K_P/resnet50.pth) | 75.6 |
[TResNet-M](https://miil-public-eu.oss-eu-central-1.aliyuncs.com/model-zoo/ImageNet_21K_P/tresnet_m.pth) | 76.4 |
[TResNet-L (V2)](https://miil-public-eu.oss-eu-central-1.aliyuncs.com/model-zoo/ImageNet_21K_P/tresnet_l_v2.pth) | 76.7 |
[VIT_base_patch16_224](https://miil-public-eu.oss-eu-central-1.aliyuncs.com/model-zoo/ImageNet_21K_P/vit_base_patch16_224.pth) | 77.6 |

To properly initilize the model and load the model weigts, see [link](./src_files/models/utils/factory.py)


