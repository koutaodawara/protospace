#protospace(db設計)
 ====

##モデル テーブル  
+product
+products
 -:title
 -:image
 -:catch_copy
 -:concept

+comment
+comments
 -:text
 -:product_id
 -:user_id

 +user
 +users
  -:avatar
  -:nickname
  -:password
  -:member
  -:profile
  -:works
  -:product_id

  +tag
  +tags(gem)
   -:text
   -product_id
   -:user_id)


##アソシエーション
      +user -> products  
      +user -> comments  
      +product -> comments  
      +product -> tags  
      +tag -> products  
