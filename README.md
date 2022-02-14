# HAKE: Human Activity Knowledge Engine

For more details please refer to HAKE website http://hake-mvig.cn.

# HAKE project:
- **HAKE-Image** (CVPR'18/20): Human body part state labels in images. [HAKE-HICO](https://github.com/DirtyHarryLYL/HAKE#hake-hico-for-image-level-hoi-recognition), [HAKE-HICO-DET](https://github.com/DirtyHarryLYL/HAKE#hake-hico-det-for-instance-level-hoi-detection), [HAKE-Large](https://github.com/DirtyHarryLYL/HAKE#hake-large-for-instance-level-action-understanding-pre-training), [Extra-40-verbs](https://github.com/DirtyHarryLYL/HAKE#extra-40-verb-categories).
- **HAKE-AVA**: Human body part state labels in videos from AVA dataset. [HAKE-AVA](https://github.com/DirtyHarryLYL/HAKE-AVA).
- **[HAKE-A2V](https://github.com/DirtyHarryLYL/HAKE-Action-Torch/tree/Activity2Vec)** (CVPR'20): Activity2Vec, a general activity feature extractor based on HAKE data, converting a human (box) to a fixed-size vector, PaSta and action scores.
- **[HAKE-Action-TF](https://github.com/DirtyHarryLYL/HAKE-Action), [HAKE-Action-Torch](https://github.com/DirtyHarryLYL/HAKE-Action-Torch)** (CVPR'19/20, NeurIPS'20, TPAMI'21): SOTA action understanding methods and the corresponding HAKE-enhanced versions ([TIN](https://github.com/DirtyHarryLYL/Transferable-Interactiveness-Network), [IDN](https://github.com/DirtyHarryLYL/HAKE-Action-Torch/tree/IDN-(Integrating-Decomposing-Network))).
- **HAKE-3D** (CVPR'20): 3D human-object representation for action understanding ([DJ-RN](https://github.com/DirtyHarryLYL/DJ-RN)).
- **HAKE-Object** (CVPR'20, TPAMI'21): object knowledge learner to advance action understanding ([SymNet](https://github.com/DirtyHarryLYL/SymNet)).
- [**Halpe**](https://github.com/Fang-Haoshu/Halpe-FullBody): a joint project under [AlphaPose](https://github.com/MVIG-SJTU/AlphaPose) and [HAKE](http://hake-mvig.cn), full-body human keypoints (body, face, hand, 136 points) of 50,000 HOI images.
- [**HOI Learning List**](https://github.com/DirtyHarryLYL/HOI-Learning-List): a list of recent HOI (Human-Object Interaction) papers, code, datasets and leaderboard on widely-used benchmarks. Hope it could help everyone interested in HOI.

#### **News**: (2022.02.14) We release the human body part state labels based on AVA: [HAKE-AVA](https://github.com/DirtyHarryLYL/HAKE-AVA).

(2021.10.06) Our extended version of [SymNet](https://github.com/DirtyHarryLYL/SymNet) is accepted by TPAMI! Paper and code are coming soon.

(2021.2.7) Upgraded [HAKE-Activity2Vec](https://github.com/DirtyHarryLYL/HAKE-Action-Torch/tree/Activity2Vec) is released! Images/Videos --> human box + ID + skeleton + part states + action + representation. [[Description]](https://drive.google.com/file/d/1iZ57hKjus2lKbv1MAB-TLFrChSoWGD5e/view?usp=sharing)
<p align='center'>
    <img src="https://github.com/DirtyHarryLYL/HAKE-Action-Torch/blob/Activity2Vec/demo/a2v-demo.gif", height="400">
</p>

## Full demo: [[YouTube]](https://t.co/hXiAYPXEuL?amp=1), [[bilibili]](https://www.bilibili.com/video/BV1s54y1Y76s)

(2021.1.15) Our extended version of [TIN (Transferable Interactiveness Network)](https://arxiv.org/abs/2101.10292) is accepted by TPAMI!

(2020.10.27) The code of [IDN](https://github.com/DirtyHarryLYL/HAKE-Action-Torch/tree/IDN-(Integrating-Decomposing-Network)) ([Paper](https://arxiv.org/abs/2010.16219)) in NeurIPS'20 is released!

(2020.6.16) Our larger version [HAKE-Large](https://github.com/DirtyHarryLYL/HAKE#hake-large-for-instance-level-hoi-detection) (>122K images, activity and part state labels) and [Extra-40-verbs](https://github.com/DirtyHarryLYL/HAKE#extra-40-verb-categories) (40 new actions) are released!

**The image-level and instance-level part state annotations upon HICO and HICO-DET are available!**

- Paper is here: [PaStaNet](https://arxiv.org/abs/2004.00945).

- Corresponding Code and model ([HAKE-Action](https://github.com/DirtyHarryLYL/HAKE-Action)): [Image-level](https://github.com/DirtyHarryLYL/HAKE-Action/tree/Image-level-HAKE-Action) and [Instance-level](https://github.com/DirtyHarryLYL/HAKE-Action/tree/Instance-level-HAKE-Action).

#### Note that: 
- Image-level means that what Human-Object Interactions are included in an image, and the corrsponding task is the HOI recognition (image-level multi-label classification from [HICO](http://www-personal.umich.edu/~ywchao/hico/)). 
- Instance-level means that what HOIs are performed by a person, and the task is HOI detection (instance-level multi-label detection from [HICO-DET](http://www-personal.umich.edu/~ywchao/publications/chao_wacv2018.pdf)).

If you find HAKE useful, please cite our [paper](https://arxiv.org/abs/2004.00945):

    @inproceedings{li2020pastanet,
        title={PaStaNet: Toward Human Activity Knowledge Engine},
        author={Li, Yong-Lu and Xu, Liang and Liu, Xinpeng and Huang, Xijie and Xu, Yue and Wang, Shiyi and Fang, Hao-Shu and Ma, Ze and Chen, Mingyang and Lu, Cewu},
        booktitle={CVPR},
        year={2020}
        
    @inproceedings{lu2018beyond,
        title={Beyond holistic object recognition: Enriching image understanding with part states},
        author={Lu, Cewu and Su, Hao and Li, Yonglu and Lu, Yongyi and Yi, Li and Tang, Chi-Keung and Guibas, Leonidas J},
        booktitle={CVPR},
        year={2018}

## HAKE-HICO (For Image-level HOI Recognition)

We have released image-level part state annotations on [HICO](http://www-personal.umich.edu/~ywchao/hico/). 
HOI recognition task can be modeled as a multi-label classification problem with 600 HOI categories. Given a still image, the model should tell the involved HOI categories in this image.

All the 38,116 images in train set of HICO dataset are annotated with finer human body part states. 
For better understanding of HOI recognition task, you could refer to these works: [HICO](http://www-personal.umich.edu/~ywchao/publications/chao_iccv2015.pdf), [Pair-wise](http://openaccess.thecvf.com/content_ECCV_2018/papers/Haoshu_Fang_Pairwise_Body-Part_Attention_ECCV_2018_paper.pdf), [HAKE](https://arxiv.org/abs/2004.00945.pdf).

### Dataset
The labels are packaged in **Annotations/hico-image-level.tar.gz**, you can use:

    cd Annotations
    tar zxvf hico-image-level.tar.gz

to unzip them and get hico-training-set-image-level.json for train set of HICO respectively. More details about the format are shown in [Dataset format](Annotations/README.md#image-level-partstate-for-hico).

The HICO dataset can be found here: [HICO](http://www-personal.umich.edu/~ywchao/hico/).

### Code and Models
The corresponding code and models can be found [here](https://github.com/DirtyHarryLYL/HAKE-Action/tree/Image-level-HAKE-Action).

### Results
We provide our current state-of-the-art result file on HICO.


| Method | Few@1 | Few@5 | Few@10 | mAP | result |
| --- | ------ | ------ | --- | --- | ---|
| Pairwise-Part+HAKE-ALL | 25.40 | 32.48 | 33.71 | 47.09 | [hico\_result\_pairwise\_hake\_all.csv](https://drive.google.com/file/d/1nWi44-UaMB0cnkdGoIN8dGi3cwsRcnVb/view?usp=sharing) |

### Evaluation
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

### Code and Models
The corresponding code and models can be found [here](https://github.com/DirtyHarryLYL/HAKE-Action/tree/Instance-level-HAKE-Action).

## HAKE-Large (For Instance-level Action Understanding Pre-training)

Instance-level part state annotations on HAKE-Large are also available now!


### Dataset
The labels are packaged in **Annotations/hake\_large\_annotation.tar.gz**, you could use:

    cd Annotations
    tar zxvf hake_large_annotation.tar.gz

to unzip them and get hake\_large\_annotation.json for train set of HAKE-Large respectively. 
More details about the format are shown in [Dataset format](Annotations/README.md).

### Images
You could download the corresponding images following [this](https://github.com/DirtyHarryLYL/HAKE/tree/master/Images#download-images-for-hake).

### Extra 40 verb categories

We also provided the image set and part-state labels of the extra 40 verb categories (includes both HOI and human-only actions). You can download them from [Google Drive](https://drive.google.com/open?id=14K_4FfjviJNDVLJdGM96W2ZLN55dDb2-). The verb\_list, part-state\_list is attached in the zip file. For these 40 verb categories, objects are also from coco80 categories but object bounding boxes and categories are optional (e.g. `dance` has no interactive objects).


## HAKE-AVA (For Instance-level Action Detection from Videos)
Fine-grained Spatio-Temporal Activity Understanding based on AVA videos. HAKE-AVA contains the human body part states (PaSta) annotations upon AVA and covers all the labeled human instances. PaSta (Part State) describes the action states of 10 human body parts, i.e., head, arms, hands, hip, legs, and feet.

For details, please refer to this [repo](https://github.com/DirtyHarryLYL/HAKE-AVA).


## TODOS
- [x] Image-level label results on HICO
- [x] Image-level code and models
- [x] Instance-level label results on HICO-DET
- [x] Instance-level code and models
- [x] HAKE-Large data
- [x] HAKE-A2V, pipeline, model
- [x] HAKE-Action in PYTorch
- [x] HAKE-AVA data
