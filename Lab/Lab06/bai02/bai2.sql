start transaction;
 delete from fs_product where product_id = 1;
 delete from fs_product_img where product_id = 1;
 delete from fs_order_detail where product_id = 1;
commit;

-- cau 2:

start transaction;
    delete fs_product_img
    from fs_product_img 
    join fs_product on fs_product_img.product_id = fs_product.id
    where fs_product.category_id = 1;
    
    delete fs_order_detail
    from fs_order_detail 
    join fs_product on fs_order_detail.product_id = fs_product.id
    where fs_product.category_id = 1;
    
    delete from fs_product where category_id = 1;
    delete from fs_category where id = 1;
commit;
-- cau 3:
start transaction;
    delete from fs_category where department_id =1;
     delete from fs_department where id =1;
commit;

-- cau 4:
start transaction;
    delete from fs_order_detail where order_id =1;
     delete from fs_order where id =1;
commit;

--cau 5:
start transaction;
    delete from fs_order where user_id =1;
     delete from fs_user where id =1;
commit;
-- -------------------------------------------------------------------------------------