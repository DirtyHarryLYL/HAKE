# Download Images for HAKE

We collect images from:

- HICO-det: [http://www-personal.umich.edu/~ywchao/hico/](http://www-personal.umich.edu/~ywchao/hico/)
- V-COCO: [https://arxiv.org/abs/1505.04474](https://arxiv.org/abs/1505.04474)
- Openimages: [https://storage.googleapis.com/openimages/web/index.html](https://storage.googleapis.com/openimages/web/index.html)
- HCVRD: [https://arxiv.org/abs/1705.09892](https://arxiv.org/abs/1705.09892)
- PIC: [http://picdataset.com/challenge/index/](http://picdataset.com/challenge/index/)
- hake\_images\_20190730: [https://drive.google.com/open?id=18R\_3Oz7zO1knEjagY6sfUkQ1\_6wZf0Ei](https://drive.google.com/open?id=18R_3Oz7zO1knEjagY6sfUkQ1_6wZf0Ei)
- hake\_images\_20200614: [https://drive.google.com/open?id=14K\_4FfjviJNDVLJdGM96W2ZLN55dDb2-](https://drive.google.com/open?id=14K_4FfjviJNDVLJdGM96W2ZLN55dDb2-)

## How to Download images

Firstly, you can use the following script to download HICO-DET, V-COCO, HCVRD(part):

	cd Images
	sh download_image/download_dataset.sh

Please use Python3 and ```pip install request``` is needed to download images.

For Openimages(part) dataset, please go to [Openimages download](https://storage.googleapis.com/openimages/web/index.html) to download the whole dataset and then select the used images by this [imagelist](imagelist/openimages.txt). For convenience (some links are not availabel now), we select the used images and the corresponding meta data and then upload them on [Google Drive](), you can also download them and unzip them to ```Images/images```.

Secondly, for PIC dataset, you need to download it from [http://picdataset.com/challenge/index/](http://picdataset.com/challenge/index/), and then put it under ```Images/images```.

Thirdly, for the images uploaded from [our website](http://hake-mvig.cn/home/), you can download them from the [Google Drive](https://drive.google.com/file/d/1Smrsy9AsOUyvj66ytGmB5M3WknljwuXL/view?usp=sharing) and [Google Drive](https://drive.google.com/file/d/14K_4FfjviJNDVLJdGM96W2ZLN55dDb2-/view?usp=sharing).


Finally, the folder tree is that:

	images
	├── hake_images_20190730
	│   └── xxx.jpg
    ├── hake_images_20200614
    │   └── xxx.jpg
	├── hcvrd
	│   └── xxx.jpg
	├── hico_20160224_det
	│   └── images
	│       ├── test2015
	│       │   └── xxx.jpg
	│       └── train2015
	│           └── xxx.jpg
	├── openimages
	│   └── xxx.jpg
	├── pic
	│   └── xxx.jpg
	└── vcoco
	    ├── train2014
	    |    └── xxx.jpg
	    └── val2014
	        └── xxx.jpg


The image name lists can be found under ```Images/imagelist```.
