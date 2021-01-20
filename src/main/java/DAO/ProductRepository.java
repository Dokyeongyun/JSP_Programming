package DAO;

import DTO.Product;

import java.util.ArrayList;

public class ProductRepository {

    private ArrayList<Product> listOfProducts = new ArrayList<>();

    public ProductRepository(){
        Product phone = new Product("P1234", "iPhone 6s", 800000);
        phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
        phone.setCategory("Smart Phone");
        phone.setManufacturer("Apple");
        phone.setUnitsInStock(1000);
        phone.setCondition("NEW");

        Product phone2 = new Product("P1235", "iPhone 6s", 800000);
        phone2.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
        phone2.setCategory("Smart Phone");
        phone2.setManufacturer("Apple");
        phone2.setUnitsInStock(1000);
        phone2.setCondition("NEW");

        Product phone3 = new Product("P1236", "iPhone 6s", 800000);
        phone3.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
        phone3.setCategory("Smart Phone");
        phone3.setManufacturer("Apple");
        phone3.setUnitsInStock(1000);
        phone3.setCondition("NEW");

        listOfProducts.add(phone);
        listOfProducts.add(phone2);
        listOfProducts.add(phone3);
    }

    public ArrayList<Product> getAllProducts() {
        return listOfProducts;
    }

    public Product getProductById(String productId){
        Product productById = null;
        for(int i=0; i<listOfProducts.size(); i++){
            Product product = listOfProducts.get(i);
            if(product != null && product.getProductId() != null && product.getProductId().equals(productId)){
                productById = product;
                break;
            }
        }
        return productById;
    }
}
