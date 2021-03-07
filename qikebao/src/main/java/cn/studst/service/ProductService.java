package cn.studst.service;

import cn.studst.pojo.Product;
import cn.studst.pojo.Product1;
import cn.studst.pojo.Product2;
import org.springframework.stereotype.Service;

import java.util.List;
//@Service
public interface ProductService {
   int addProduct(Product product);

   List<Product> queryAllProduct();

   List<Product> queryProductByName(String name);

   int deleteProductById(int id);

   int addProduct1(Product1 product);

   List<Product1> queryAllProduct1();

   List<Product1> queryProduct1ByName(String name);

   int deleteProduct1ById(int id);


   int addProduct2(Product2 product);

   List<Product2> queryAllProduct2();

   List<Product2> queryProduct2ByName(String name);

   int deleteProduct2ById(int id);
}
