# Annotation Format
The format of provided annotation files.

## Image-level PartState Annotation for HICO

### Annotation Diagram
<img src=../misc/hico_image_level_sample.png width="90%" align=center>

### Format Details
Both of training_set and testing_set annotation results have the same format as follows:

    {  
        ...
        "HICO_train2015_000xxxxx.jpg":{  
            "hoi_id":[490, 492, 493, 494],
            "parts_list":[0, 0, 0, 0, 0, 0, 1, 0, 0, 0],
            "foot_list":[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
            "leg_list":[0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
            "arm_list":[0, 0, 0, 0, 1],
            "hand_list":[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            "hip_list":[0, 0, 0, 0, 1],
            "head_list":[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
        },
        "HICO_train2015_000xxxxx.jpg": {
            ...
        }
        ...
    }

In JSON format, where key is the name of the image, and the values include:

- hoi_id: Image-level HOI labels(same setting as [HICO](https://drive.google.com/file/d/1ipvRTUF2zpOlHHqzbEb29iwscizoM1CK/view), [txt format](../Config/hico_hoi_list.txt))
- parts_list: Part-State binary labels of length 10, where 1 indicates that the corresponding human-part is active in the image. The human-part setting is same as [Pair-wise](http://openaccess.thecvf.com/content_ECCV_2018/papers/Haoshu_Fang_Pairwise_Body-Part_Attention_ECCV_2018_paper.pdf). The order is Right\_foot, Right\_leg, Left\_leg, Left\_foot, Hip, Head, Right\_hand, Right\_arm, Left\_arm, Left\_hand. You can refer to [this image](../misc/human_part_definition.png) for visualization.
- foot_list, leg_list, arm_list, hand_list, hip_list, head_list: Part-State labels of 6 combined human-parts(merge left and right in foot, leg, arm, hand by **OR** operation). They are represented in one-hot way, and the value of last index is 1 means that this human-part is inactive in this image. Please refer to our [Part-State setting](../Config/Part_State_76.txt) for more details.

## Instance-level PartState Annotation for HICO-DET

### Format Details
Both of training\_set and testing\_set annotation results have the same format as follows:
    
```
...
{
	u'dataset': u'hico-det',
	u'labels': [
	{
	  	u'action_labels': [
			{u'human_part': 0, u'partstate': 0},
			{u'human_part': 3, u'partstate': 0}
		],
		u'height': 458,
		u'hoi_id': 524,
   		u'human_bbox': [1, 60, 395, 399],
   		u'object_bbox': [88, 247, 637, 449],
   		u'width': 640
   	},
  	{
  		u'action_labels': [
  			{u'human_part': 0, u'partstate': 0},
		   {u'human_part': 3, u'partstate': 0}
		],
	   u'height': 458,
   		u'hoi_id': 525,
   		u'human_bbox': [2, 54, 397, 404],
   		u'object_bbox': [170, 292, 637, 452],
   		u'width': 640
   	}
   	...
   	],
 	u'path_prefix': u'hico_20160224_det/images/test2015'
 }
 ...
```

In JSON format, where key is the name of the image, and the values include:

- action\_labels: For each human-object pair, we provide the part state labels in human\_part and partstate pairs. The human\part order is Right\_foot, Right\_leg, Left\_leg, Left\_foot, Hip, Head, Right\_hand, Right\_arm, Left\_arm, Left\_hand. You can refer to [this image](../misc/human_part_definition.png) for visualization. Partstate label lists are provided in our paper.
- hoi_id: Image-level HOI labels(same setting as [HICO](https://drive.google.com/file/d/1ipvRTUF2zpOlHHqzbEb29iwscizoM1CK/view), [txt format](../Config/hico_hoi_list.txt))






