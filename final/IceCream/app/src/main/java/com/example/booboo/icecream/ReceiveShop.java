package com.example.booboo.icecream;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;

public class ReceiveShop extends AppCompatActivity {

    private String Shop;
    private String ShopURL;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_receive_shop);

        //get intent
        Intent intent = getIntent();
        Shop = intent.getStringExtra("coffeeShopName");
        ShopURL = intent.getStringExtra("coffeeShopURL");
        System.out.println(Shop);
        System.out.println(ShopURL);
        //update text view
        TextView messageView = (TextView) findViewById(R.id.textView4);
        messageView.setText("You should check out " + Shop);

        //get image button
        final ImageButton imageButton = (ImageButton) findViewById(R.id.imageButton);
        //create listener
        View.OnClickListener onclick = new View.OnClickListener() {
            public void onClick(View view) {
                loadWebSite(view);
            }
        };
        //add listener to the button
        imageButton.setOnClickListener(onclick);
    }

    public void loadWebSite(View view) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(ShopURL));
        startActivity(intent);
    }
}