#  pre-trained models

We provide a collection of models trained with semantic softmax on ImageNet-21K-P dataset.
<br>To properly compare between the models, we also provie some throughput metrics.


| Backbone  |  ImageNet-21K-P semantic<br> top-1 Accuracy [%] | ImageNet-1K<br> top-1 Accuracy [%] | Maximal <br> batch size | Maximal <br> training speed <br>(img/sec) | Maximal <br> inference speed <br>(img/sec) |
| :------------: | :--------------: | :--------------: | :--------------: | :--------------: | :--------------: |
[MobilenetV3_large_100](https://miil-public-eu.oss-eu-central-1.aliyuncs.com/model-zoo/ImageNet_21K_P/models/mobilenetv3_large_100_miil_21k.pth) | 73.1 | 78.0 | 488 | 1210 | 5980 |
[ResNet50](https://miil-public-eu.oss-eu-central-1.aliyuncs.com/model-zoo/ImageNet_21K_P/models/resnet50_miil_21k.pth) | 75.6 | 82.0 | 320 | 720 | 2760 |
[TResNet-M](https://miil-public-eu.oss-eu-central-1.aliyuncs.com/model-zoo/ImageNet_21K_P/models/tresnet_m_miil_21k.pth) | 76.4 | 83.1 | 520 | 670 | 2970 |
[TResNet-L (V2)](https://miil-public-eu.oss-eu-central-1.aliyuncs.com/model-zoo/ImageNet_21K_P/models/tresnet_l_v2_miil_21k.pth) | 76.7 | 83.9 | 240 | 300 | 1460 |
[VIT_base_patch16_224](https://miil-public-eu.oss-eu-central-1.aliyuncs.com/model-zoo/ImageNet_21K_P/models/vit_base_patch16_224_miil_21k.pth) | 77.6 | 84.4 | 160 | 340 | 1140 |

To properly initilize the model and load the model weigts, use [link](./src_files/models/utils/factory.py).

Notes
 - ViT model highly benefits from O2 mixed-precision training and inference.  O1 mixed-precision speeds (torch.autocast) are lower
 - maximal training and inference speed was calculated with 90% of maximal batch size.