# HAKE: Human Activity Knowledge Engine

**News: Our paper "PaStaNet: Toward Human Activity Knowledge Engine" is accepted in CVPR2020, which contains the image-level and instance-level human part state annotations and the corresponding models. We will release them soon. Besides, we will also release the code and data of our two related papers "Detailed 2D-3D Joint Representation for Human-Object Interaction" and  "Symmetry in Attribute-Object Compositions" (also accepted in CVPR2020).**

**Besides, we plan to release a new human activity understanding system: "HAKE-Action", which includes the reproduced SOTA image/video activity recognition/detection models and the corresponding HAKE-enhanced models. The main action benchmarks includes: HICO, HICO-DET, V-COCO, Ambiguous-HOI(our new CVPR2020 benchmark), AVA, etc.**

More details can be found in the HAKE website http://hake-mvig.cn. 

**The image-level part-state annotations on HICO dataset are avaiable! Code and models on HICO will be shared soon. Subsequently, instance-level part-state annotations on still images/videos and the corresponding code and models will be made public soon too.**

Note that: image-level means that what Human-Object Interactions are included in an image, and the corrsponding task is the HOI recognition (image-level multi-label classification from [HICO](http://www-personal.umich.edu/~ywchao/hico/)). 
Meanwhile, instance-level means that what HOIs are performed by a person, and the task is HOI detection (instance-level multi-label classification from [HICO-DET](http://www-personal.umich.edu/~ywchao/publications/chao_wacv2018.pdf)).
The finer grained instance-level annotations will be released soon for better exploring HOI detection problem.


If you find HAKE useful, please cite our [paper](https://arxiv.org/abs/1904.06539):

    @article{li2019hake,
        title={HAKE: Human Activity Knowledge Engine},
        author={Li, Yong-Lu and Xu, Liang and Huang, Xijie and Liu, Xinpeng and Ma, Ze and Chen, Mingyang and Wang, Shiyi and Fang, Hao-Shu and Lu, Cewu},
        journal={arXiv preprint arXiv:1904.06539},
        year={2019}
    }


## HAKE-HICO (For Image-level HOI Recognition)

We have released image-level part-state annotation results on [HICO](http://www-personal.umich.edu/~ywchao/hico/). HOI recognition task can be modeled as a multi-label classification problem with 600 HOI categories. Given a still image, the model should tell the involved HOI categories in this image.

We have labeled all the 38,116 images in train set and 9,658 images in test set of HICO dataset. For better understanding of HOI recognition task, you can refer to these works: [HICO](http://www-personal.umich.edu/~ywchao/publications/chao_iccv2015.pdf), [Pair-wise](http://openaccess.thecvf.com/content_ECCV_2018/papers/Haoshu_Fang_Pairwise_Body-Part_Attention_ECCV_2018_paper.pdf), [HAKE](https://arxiv.org/pdf/1904.06539.pdf).

### Dataset
The labels are packaged in **Annotations/hico-image-level.tar.gz**, you can use:

    cd Annotations
    tar zxvf hico-image-level.tar.gz

to unzip them and get hico-training-set-image-level.json and hico-testing-set-image-level.json for train set and test set of HICO respectively. More details about the format are shown in [Dataset format](Annotations/README.md#image-level-partstate-for-hico).

The HICO dataset can be found here: [HICO](http://www-personal.umich.edu/~ywchao/hico/).

### Results
We provide our current state-of-the-art result file on HICO.


| Method | Few@1 | Few@5 | Few@10 | mAP | result |
| --- | ------ | ------ | --- | --- | ---|
| Pairwise-Part+HAKE-ALL | 25.40 | 32.48 | 33.71 | 47.09 | [hico\_result\_pairwise\_hake\_all.csv](https://drive.google.com/file/d/1nWi44-UaMB0cnkdGoIN8dGi3cwsRcnVb/view?usp=sharing) |


### Evaluate
After downloading above result file, you could use the following commands to evaluate: 


1. Download evaluation [code](https://drive.google.com/drive/folders/1mvXAtCe0Yc7JUQXCu3D_wpWt7r048lGc?usp=sharing) here (It is a modification of [this benchmark](https://github.com/ywchao/hico_benchmark))
2. Copy the result file to #/data/test-result.csv, where # means the folder of the evaluation code
3. run `matlab -nodesktop -nodisplay`
4. run `eval_default_run`



## TODOS
- [x] Image-level label results on HICO
- [ ] Image-level code and models
- [ ] Instance-level label results on HICO-DET
- [ ] Instance-level code and models




