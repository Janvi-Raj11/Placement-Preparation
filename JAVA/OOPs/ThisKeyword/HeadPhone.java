package ThisKeyword;

public class HeadPhone {
    String brand;
    double price;

    HeadPhone(String brand, double price){
        this.brand=brand;
        this.price=price;
    }

    void display(){
        System.out.println(brand +": "+ price);
    }
    
}
