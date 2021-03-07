package cn.studst.mapper;

import cn.studst.pojo.Product;
import cn.studst.pojo.Product1;
import cn.studst.pojo.Product2;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductMapper {

    int insertProduct(Product product);

    List<Product> selectAllProduct();

    List<Product> selectProductByName(String name);

    int deleteProductById(@Param("Product_id") int id);

    int insertProduct1(Product1 product);

    List<Product1> selectAllProduct1();

    List<Product1> selectProduct1ByName(String name);

    int deleteProduct1ById(@Param("Product_id") int id);

    int insertProduct2(Product2 product);

    List<Product2> selectAllProduct2();

    List<Product2> selectProduct2ByName(String name);

    int deleteProduct2ById(@Param("Product_id") int id);

}
