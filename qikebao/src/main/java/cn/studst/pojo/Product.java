package cn.studst.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {
    private String Product_name;
    private int Product_id;
    private int Product_price;
    private int Product_cost;
    private String Product_profile;
//    private int Product_class;

}
