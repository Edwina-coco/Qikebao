package cn.studst.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product2 {
    private String Product_name;
    private int Product_id;
    private int Product_price;
    private int Product_cost;
    private String Product_profile;
}
