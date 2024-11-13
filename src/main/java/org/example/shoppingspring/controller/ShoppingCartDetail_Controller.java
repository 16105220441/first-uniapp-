package org.example.shoppingspring.controller;

import org.example.shoppingspring.domain.Products;
import org.example.shoppingspring.domain.ShoppingCart;
import org.example.shoppingspring.domain.ShoppingCartDetail;
import org.example.shoppingspring.service.ProductsService;
import org.example.shoppingspring.service.ShoppingCartDetail_Service;
import org.example.shoppingspring.service.ShoppingCart_Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/cartDetail")
public class ShoppingCartDetail_Controller {

    private static final Logger log = LoggerFactory.getLogger(ShoppingCartDetail_Controller.class);
    @Autowired
    ShoppingCartDetail_Service shoppingCartDetail_service;

    @Autowired
    ProductsService productsService;

    @Autowired
    ShoppingCart_Service shoppingCart_service;

    @PostMapping("/add/product")
    public void addToCartDetail(@RequestBody ShoppingCartDetail shoppingCartDetail1) {

        Products products =
                productsService.getProInfo((int) shoppingCartDetail1.getProductId());
        double price = products.getDiscountPrice();

        double itemTotalPrice = price * shoppingCartDetail1.getQuantity();

        ShoppingCart shoppingCart =
                shoppingCart_service.get_byCustomerId(shoppingCartDetail1.getCustomerId());
       /* if (shoppingCart == null) {
            shoppingCart_service.addCart(customerId);
            shoppingCart = shoppingCart_service.get_byCustomerId(customerId);
        }
*/
        ShoppingCartDetail shoppingCartDetail =
                shoppingCartDetail_service.isProductInCart( shoppingCartDetail1.getProductId(),
                        shoppingCartDetail1.getCustomerId()) ;
        long change_totalQuantity = 0;
        double change_itemTotalPrice = 0;
        if (shoppingCartDetail == null) {

          /* if(quantity > products.getStockTotal()){
               throw new ProductException("库存量不足");
           }*/
            shoppingCartDetail_service.addToCartDetail(Math.toIntExact(shoppingCartDetail1.getProductId()), Math.toIntExact(shoppingCartDetail1.getQuantity()),
                    itemTotalPrice, shoppingCart.getId(),
                    Math.toIntExact(shoppingCartDetail1.getCustomerId()));
            /* productsService.update_stockTotal(quantity);*/
        } else {
            /*if(quantity+shoppingCartDetail.getQuantity() > products.getStockTotal()){
                throw new ProductException("库存量不足");
            }*/
            change_totalQuantity = shoppingCartDetail.getQuantity();
            change_itemTotalPrice = shoppingCartDetail.getItemTotalPrice();
            shoppingCartDetail_service.updateProductQuantity(shoppingCartDetail.getDetailId(), (int) shoppingCartDetail1.getQuantity(), itemTotalPrice);


        }
        shoppingCartDetail =
                shoppingCartDetail_service.isProductInCart(shoppingCartDetail1.getProductId(),
               shoppingCartDetail1.getCustomerId());
        change_totalQuantity =
                shoppingCartDetail.getQuantity() - change_totalQuantity;
        change_itemTotalPrice =
                shoppingCartDetail.getItemTotalPrice() - change_itemTotalPrice;

        shoppingCart_service.update_info(shoppingCartDetail.getShoppingCartId(),
                change_itemTotalPrice, change_totalQuantity);
    }

    @PutMapping("/update/product")
    public Map<String, Object> update_totalQuantityAndTotalprice(@RequestBody ShoppingCartDetail shoppingCartDetail0) {
//        System.out.println(shoppingCartDetail0);
        ShoppingCartDetail shoppingCartDetail =
                shoppingCartDetail_service.isProductInCart(shoppingCartDetail0.getProductId(),
                        shoppingCartDetail0.getCustomerId());
        double changePrice = shoppingCartDetail.getItemTotalPrice();
        long changeNum = shoppingCartDetail.getQuantity();

        shoppingCartDetail_service.update_totalQuantityAndTotalprice(shoppingCartDetail0.getProductId(),
                shoppingCartDetail0.getCustomerId(),
                shoppingCartDetail0.getQuantity(),
                shoppingCartDetail0.getItemTotalPrice());
        shoppingCartDetail = shoppingCartDetail_service.isProductInCart(shoppingCartDetail0.getProductId(),
                shoppingCartDetail0.getCustomerId());
        changeNum = shoppingCartDetail.getQuantity() - changeNum;
        changePrice = shoppingCartDetail.getItemTotalPrice() - changePrice;

        shoppingCart_service.update_info(shoppingCartDetail.getShoppingCartId(), changePrice, changeNum
        );
        ShoppingCart shoppingCart =
                shoppingCart_service.get_byCustomerId(shoppingCartDetail0.getCustomerId());
        Map<String, Object> map = new HashMap<>();
        map.put("shoppingCart", shoppingCart);
        return map;
    }

    @PostMapping("/delete")
    public void delete_cartDetail(@RequestBody List<ShoppingCartDetail> shoppingCartDetailList) {


    for (ShoppingCartDetail shoppingCartDetailItem : shoppingCartDetailList) {
        ShoppingCartDetail shoppingCartDetail =
                shoppingCartDetail_service.isProductInCart(shoppingCartDetailItem.getProductId(),shoppingCartDetailItem.getCustomerId());
      int i =
              shoppingCartDetail_service.delete_cartDetail((int) shoppingCartDetail.getProductId(), (int) shoppingCartDetailItem.getCustomerId());

      log.error(String.valueOf(i));
        shoppingCart_service.update_info(shoppingCartDetail.getShoppingCartId(),-shoppingCartDetail.getItemTotalPrice(),shoppingCartDetail.getQuantity());
        }


    }

    @GetMapping("/get/Info")
    public boolean get_ShoppingCartDetail(@RequestParam int customerId,
                                          @RequestParam int  productId){

     ShoppingCartDetail shoppingCartDetail =
             shoppingCartDetail_service.isProductInCart(productId,customerId);
        return shoppingCartDetail != null;
    }

    @GetMapping("/get/cartProTotalNum")
    public int get_cartProTotalNum(@RequestParam int customerId){
        return shoppingCartDetail_service.get_cartProTotalNum(customerId);
    }
}
