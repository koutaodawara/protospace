#protospace(db設計)
 ====

##テーブル  
##productsテーブル
|colum name |
|:---------:|
|:title     |
|:image1    |
|:image2    |
|:image3    |
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



##アソシエーション
user *has_many* products  
user *has_many* comments  
product *has_many* comments  
product *has_many* tags  
tag *has_many* products  
user *has_many* likes  
products *has_many* likes  
