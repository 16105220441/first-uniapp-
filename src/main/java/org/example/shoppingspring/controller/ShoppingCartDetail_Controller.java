package org.example.shoppingspring.controller;

import org.example.shoppingspring.domain.Products;
import org.example.shoppingspring.domain.ShoppingCart;
import org.example.shoppingspring.domain.ShoppingCartDetail;
import org.example.shoppingspring.service.ProductsService;
import org.example.shoppingspring.service.ShoppingCartDetail_Service;
import org.example.shoppingspring.service.ShoppingCart_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/cartDetail")
public class ShoppingCartDetail_Controller {

    @Autowired
    ShoppingCartDetail_Service shoppingCartDetail_service;

    @Autowired
    ProductsService productsService;

    @Autowired
    ShoppingCart_Service shoppingCart_service;

    @PostMapping("/add/product")
    public void addToCartDetail(@RequestParam int productId,
                                @RequestParam int quantity,
                                @RequestParam int customerId) {
        Products products = productsService.getProInfo(productId);
        double price = products.getDiscountPrice();

        double itemTotalPrice = price * quantity;

        ShoppingCart shoppingCart = shoppingCart_service.get_byCustomerId(customerId);
       /* if (shoppingCart == null) {
            shoppingCart_service.addCart(customerId);
            shoppingCart = shoppingCart_service.get_byCustomerId(customerId);
        }
*/
        ShoppingCartDetail shoppingCartDetail =
                shoppingCartDetail_service.isProductInCart(productId,
                        customerId);
        long change_totalQuantity = 0;
        double change_itemTotalPrice = 0;
        if (shoppingCartDetail == null) {

          /* if(quantity > products.getStockTotal()){
               throw new ProductException("库存量不足");
           }*/
            shoppingCartDetail_service.addToCartDetail(productId, quantity,
                    itemTotalPrice, shoppingCart.getId(), customerId);
            /* productsService.update_stockTotal(quantity);*/
        } else {
            /*if(quantity+shoppingCartDetail.getQuantity() > products.getStockTotal()){
                throw new ProductException("库存量不足");
            }*/
            change_totalQuantity = shoppingCartDetail.getQuantity();
            change_itemTotalPrice = shoppingCartDetail.getItemTotalPrice();
            shoppingCartDetail_service.updateProductQuantity(shoppingCartDetail.getDetailId(), quantity, itemTotalPrice);


        }
        shoppingCartDetail = shoppingCartDetail_service.isProductInCart(productId,
                customerId);
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
    public void delete_cartDetail(@RequestBody ShoppingCart shoppingCart) {
        List<ShoppingCartDetail> shoppingCartDetailList =
                shoppingCart.getShoppingCartDetails();
        for (ShoppingCartDetail cartDetail : shoppingCartDetailList) {
            ShoppingCartDetail shoppingCartDetail =
                    shoppingCartDetail_service.isProductInCart(cartDetail.getProductId(),
                            cartDetail.getCustomerId());
            shoppingCartDetail_service.delete_cartDetail((int) cartDetail.getProductId(),
                    (int) cartDetail.getCustomerId());

            shoppingCart_service.update_info(shoppingCartDetail.getShoppingCartId(), -shoppingCartDetail.getItemTotalPrice(), -shoppingCartDetail.getQuantity());
        }

    }
}
