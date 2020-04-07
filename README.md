# HAKE: Human Activity Knowledge Engine

This repo is mainly used to release the HAKE-Data.
More details can be found in the HAKE website http://hake-mvig.cn.

**The image-level and instance-level part state annotations upon HICO and HICO-DET are avaiable! So do the code and models at [HAKE-Action](https://github.com/DirtyHarryLYL/HAKE-Action).**

- The larger version which contains 118K+ images, activity and part state labels will be released soon.

- Paper is [here](https://arxiv.org/abs/2004.00945).

- Code and model ([HAKE-Action](https://github.com/DirtyHarryLYL/HAKE-Action)): [Image-level](https://github.com/DirtyHarryLYL/HAKE-Action/tree/Image-level-HAKE-Action) and [Instance-level](https://github.com/DirtyHarryLYL/HAKE-Action/tree/Instance-level-HAKE-Action).

- We also build a tiny repo: [HOI learning list](https://github.com/DirtyHarryLYL/HOI-Learning-List). It includes most of the recent HOI-related papers, code, datasets and leaderboard on widely-used benchmarks. Hope it could help everybody interested in HOI.

#### Note that: 
- Image-level means that what Human-Object Interactions are included in an image, and the corrsponding task is the HOI recognition (image-level multi-label classification from [HICO](http://www-personal.umich.edu/~ywchao/hico/)). 
- Instance-level means that what HOIs are performed by a person, and the task is HOI detection (instance-level multi-label detection from [HICO-DET](http://www-personal.umich.edu/~ywchao/publications/chao_wacv2018.pdf)).

If you find HAKE useful, please cite our [paper](https://arxiv.org/abs/1904.06539):

    @article{li2020pastanet,
        title={PaStaNet: Toward Human Activity Knowledge Engine},
        author={Li, Yong-Lu and Xu, Liang and Liu, Xinpeng and Huang, Xijie and Xu, Yue and Wang, Shiyi and Fang, Hao-shu and Ma, Ze and Chen, Mingyang and Lu, Cewu},
        journal={arXiv preprint arXiv:2004.00945},
        year={2020}
    }

## HAKE-HICO (For Image-level HOI Recognition)

We have released image-level part state annotations on [HICO](http://www-personal.umich.edu/~ywchao/hico/). 
HOI recognition task can be modeled as a multi-label classification problem with 600 HOI categories. Given a still image, the model should tell the involved HOI categories in this image.

All the 38,116 images in train set of HICO dataset are annotated with finer human body part states. 
For better understanding of HOI recognition task, you could refer to these works: [HICO](http://www-personal.umich.edu/~ywchao/publications/chao_iccv2015.pdf), [Pair-wise](http://openaccess.thecvf.com/content_ECCV_2018/papers/Haoshu_Fang_Pairwise_Body-Part_Attention_ECCV_2018_paper.pdf), [HAKE](https://arxiv.org/pdf/1904.06539.pdf).

### Dataset
The labels are packaged in **Annotations/hico-image-level.tar.gz**, you can use:

    cd Annotations
    tar zxvf hico-image-level.tar.gz

to unzip them and get hico-training-set-image-level.json for train set of HICO respectively. More details about the format are shown in [Dataset format](Annotations/README.md#image-level-partstate-for-hico).

The HICO dataset can be found here: [HICO](http://www-personal.umich.edu/~ywchao/hico/).

### Models
The corresponding models can be found [here](https://github.com/DirtyHarryLYL/HAKE-Action/tree/Image-level-HAKE-Action).

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


## HAKE-HICO-DET (For Instance-level HOI Detection)

Instance-level part state annotations on [HICO-DET](http://www-personal.umich.edu/~ywchao/hico/) are also available.

### Dataset
The labels are packaged in **Annotations/hico-det-instance-level.tar.gz**, you could use:

    cd Annotations
    tar zxvf hico-det-instance-level.tar.gz

to unzip them and get hico-det-training-set-instance-level.json for train set of HICO-DET respectively. 
More details about the format are shown in [Dataset format](Annotations/README.md).

The HICO-DET dataset can be found here: [HICO-DET](http://www-personal.umich.edu/~ywchao/hico/).

### Models
The corresponding models can be found [here](https://github.com/DirtyHarryLYL/HAKE-Action/tree/Instance-level-HAKE-Action).

## TODOS
- [x] Image-level label results on HICO
- [x] Image-level code and models
- [x] Instance-level label results on HICO-DET
- [x] Instance-level code and models
- [ ] HAKE-Large data
- [ ] HAKE-AVA data and code (video-based)



