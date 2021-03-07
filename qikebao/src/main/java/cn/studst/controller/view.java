package cn.studst.controller;

import cn.studst.pojo.Product;
import cn.studst.pojo.Product1;
import cn.studst.pojo.Product2;
import cn.studst.serviceimpl.ProductServiceImpl;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/product")
public class view {

    @Autowired
    public ProductServiceImpl productServiceimpl;

    @RequestMapping("/view")
    public String product(Model model)
    {
        List<Product> products = productServiceimpl.queryAllProduct();
        model.addAttribute("class",0);
        model.addAttribute("list",products);
        return "product_view";
    }

    @RequestMapping("/view1")
    public String product1(Model model)
    {
        List<Product1> product1s = productServiceimpl.queryAllProduct1();
        model.addAttribute("class",1);
        model.addAttribute("list",product1s);
        return "product_view";
    }

    @RequestMapping("/view2")
    public String product2(Model model)
    {
        List<Product2> product2s = productServiceimpl.queryAllProduct2();
        model.addAttribute("class",2);
        model.addAttribute("list",product2s);
        return "product_view";
    }



    @RequestMapping(value = "/select")
    public String selectProduct(Model model,HttpServletRequest request)
    {
        String product_name = request.getParameter("name");
        String s=request.getParameter("product_class");
        int a=Integer.parseInt(s);
        if(a==0)
        {
            List<Product> products = productServiceimpl.queryProductByName(product_name);
            model.addAttribute("class",0);
            model.addAttribute("list",products);
        }
        if(a==1)
        {
            List<Product1> products=productServiceimpl.queryProduct1ByName(product_name);
            model.addAttribute("class",1);
            model.addAttribute("list",products);
        }
        if(a==2)
        {
            List<Product2> products = productServiceimpl.queryProduct2ByName(product_name);
            model.addAttribute("class",2);
            model.addAttribute("list",products);
        }
        return "product_view";
    }

    @RequestMapping("/delete")
    @ResponseBody
    //@ReuqsetParam 接受前台的url添加的参数
    public void deleteProduct(HttpServletRequest request, HttpServletResponse response,@RequestParam("Product_class") int Product_class){
        String deleteitems = request.getParameter("deleteitems");
        String[] split=deleteitems.split(",");
        for(int i=0;i<split.length;i++)
        {
            int Product_id=Integer.parseInt(split[i]);
            if(Product_class==0)
                productServiceimpl.deleteProductById(Product_id);
            if(Product_class==1)
                productServiceimpl.deleteProduct1ById(Product_id);
            if(Product_class==2)
                productServiceimpl.deleteProduct2ById(Product_id);
        }
    }


    @RequestMapping(value = "/addProduct",method = RequestMethod.POST)
    @ResponseBody //不进行视图解析，如果有返回对象则返回一个字符串
    public void  addProduct(Product product,@RequestParam(value = "Product_class") int Product_class)  {
        if(Product_class==0)
            productServiceimpl.addProduct(product);
       if(Product_class==1)
       {
           Product1 product1=new Product1(product.getProduct_name(),product.getProduct_id(),product.getProduct_price(),product.getProduct_cost()
           ,product.getProduct_profile());
           productServiceimpl.addProduct1(product1);
       }
        if(Product_class==2)
        {
            Product2 product2=new Product2(product.getProduct_name(),product.getProduct_id(),product.getProduct_price(),product.getProduct_cost()
                    ,product.getProduct_profile());
            productServiceimpl.addProduct2(product2);
        }
    }
}
