protospace(db設計)
====

モデル product(:title,:image,:catch_copy,:concept)
      comment(:text,:product_id,:user_id)
      user(:avatar,:nickname,:password,:member,:profile,:works,:product_id)
      tag(gem)(:text,product_id,:user_id)


アソシエーション
      user -> products

      user -> comments

      product -> comments

      product -> tags

      tag -> products
