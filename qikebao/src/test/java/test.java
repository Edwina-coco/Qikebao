import cn.studst.mapper.ProductMapper;
import cn.studst.pojo.Product;
import cn.studst.serviceimpl.ProductServiceImpl;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {
    @Autowired
    ProductMapper productMapper;
//    @Test
//    public void addProduct()
//    {
//        Product product=new Product("wdadwad",2,15,"da");
//        productMapper.insertProduct(product);
//    }
}
