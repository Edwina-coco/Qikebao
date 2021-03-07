package cn.studst.serviceimpl;

import cn.studst.mapper.ProductMapper;
import cn.studst.pojo.Product;
import cn.studst.pojo.Product1;
import cn.studst.pojo.Product2;
import cn.studst.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;


    public int addProduct(Product product) {
        return productMapper.insertProduct(product);
    }

    public List<Product> queryAllProduct() {
        return productMapper.selectAllProduct();
    }

    public List<Product> queryProductByName(String name) {
        return productMapper.selectProductByName(name);
    }

    public int deleteProductById(int id) {
        return productMapper.deleteProductById(id);
    }

    public int addProduct1(Product1 product) {
        return productMapper.insertProduct1(product);
    }

    public List<Product1> queryAllProduct1() {
        return productMapper.selectAllProduct1();
    }

    public List<Product1> queryProduct1ByName(String name) {
        return productMapper.selectProduct1ByName(name);
    }
    public int deleteProduct1ById(int id) {
        return productMapper.deleteProduct1ById(id);
    }

    public int addProduct2(Product2 product) {
        return productMapper.insertProduct2(product);
    }

    public List<Product2> queryAllProduct2() {
        return productMapper.selectAllProduct2();
    }

    public List<Product2> queryProduct2ByName(String name) {
        return productMapper.selectProduct2ByName(name);
    }
    public int deleteProduct2ById(int id) {
        return productMapper.deleteProduct2ById(id);
    }
}
