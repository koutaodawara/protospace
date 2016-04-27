#protospace(db設計)
 ====

##テーブル  
##productsテーブル
|colum name |
|:---------:|
|:title     |
|:catch_copy|
|:concept   |
|created_at |
|updated_at |


##commentsテーブル　　
|column name|
|:---------:|
|:text      |
|:product_id|
|:user_id   |

##usersテーブル　　

|column name|
|:---------:|
|:password  |
|:email     |
|:member    |
|:profile   |
|:works     |
|:avatar    |
|:nickname  |


##tags(gem)
|column name|
|:----------|
|:text      |
|:product_id|
|:user_id   |

##likes
|column name|
|:---------:|
|:user_id   |
|:product_id|

##pictures
|column name|
|:----------|
|:enum      |
|:product_id|
|:image     |

enum = :status: {main: 0,sub1: 1,sub2:2}



##アソシエーション
user *has_many* products  
user *has_many* comments  
product *has_many* comments  
product *has_many* tags  
tag *has_many* products  
user *has_many* likes  
products *has_many* likes  
