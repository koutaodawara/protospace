#protospace(db設計)
 ====

##テーブル  
##productsテーブル　　

 * :title
 * :image
 * :catch_copy
 * :concept
 * created_at
 * updated_at

##commentsテーブル
* :text
* :product_id
* :user_id

##usersテーブル
 * :avatar
 * :nickname
 * :password
 * :member
 * :profile
 * :works
 * :product_id

##tags(gem)
 * :text
 * :product_id
 * :user_id



##アソシエーション
      user -> products  
      user -> comments  
      product -> comments  
      product -> tags  
      tag -> products  