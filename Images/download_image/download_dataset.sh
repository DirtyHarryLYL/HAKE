#!/bin/bash

# --------------------------------------------------------
# Download images for HAKE Dataset.
# --------------------------------------------------------

if [! -d images ];then
    mkdir images
fi
cd images

# ---------------V-COCO Dataset--------------------
echo "Downloading V-COCO Dataset"

URL_2014_Train_images=http://images.cocodataset.org/zips/train2014.zip
URL_2014_Val_images=http://images.cocodataset.org/zips/val2014.zip
#URL_2014_Test_images=http://images.cocodataset.org/zips/test2014.zip

wget -N $URL_2014_Train_images
wget -N $URL_2014_Val_images
#wget -N $URL_2014_Test_images

if [! -d vcoco ];then
    mkdir vcoco
fi

unzip train2014.zip -d vcoco/
unzip val2014.zip -d vcoco/
#unzip test2014.zip -d vcoco/

rm train2014.zip
rm val2014.zip
#rm test2014.zip

echo "V-COCO Dataset Downloaded!\n"

# ---------------HICO-DET Dataset-------------------
echo "Downloading HICO-DET Dataset"
URL_HICO_DET=http://napoli18.eecs.umich.edu/public_html/data/hico_20160224_det.tar.gz

wget -N $URL_HICO_DET
tar -xvzf hico_20160224_det.tar.gz -C ./
rm hico_20160224_det.tar.gz

echo "HICO-DET Dataset Downloaded!\n"


# ---------------hcvrd Dataset(visual genome)-------
echo "Downloading HCVRD(part) Dataset"
if [! -d hcvrd ];then
    mkdir hcvrd
fi
python ../download_image/download.py '../download_image/hcvrd_url.json' ./hcvrd

echo "HCVRD(part) Dataset Downloaded!\n"


# ---------------openimages Dataset------------------
echo "Downloading openimages(part) Dataset"
if [! -d openimages ];then
    mkdir openimages
fi
python ../download_image/download.py '../download_image/openimages_url.json' ./openimages

echo "openimages(part) Dataset Downloaded!\n"


# ---------------pic Dataset-------------------------

# Please download pic dataset from http://picdataset.com/challenge/index/
