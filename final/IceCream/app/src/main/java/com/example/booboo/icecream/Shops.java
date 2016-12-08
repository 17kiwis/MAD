package com.example.booboo.icecream;

/**
 * Created by BooBoo on 12/9/16.
 */

public class Shops {

    private String Shop;
    private String ShopURL;

    private void setInfo(Integer iceCrowd){ switch (iceCrowd){
        case 0: //popular
            Shop="Fior di Latte";
            ShopURL="http://fiordilattegelato.com/"; break;
        case 1: //cycling
            Shop=" Glacier";
            ShopURL="r http://www.glaciericecream.com/"; break;
        case 2: //hipster
            Shop=" Sweet Cow";
            ShopURL="http://www.sweetcowicecream.com/"; break;

        default: Shop="none";
            ShopURL="https://www.google.com";
    } }
    public void setShop(Integer coffeeCrowd){ setInfo(coffeeCrowd);
    }
    public void setShopURL(Integer coffeeCrowd){ setInfo(coffeeCrowd);
    }
    public String getShop(){ return Shop;
    }

    public String getCoffeeShopURL(){ return ShopURL;
    }
}
