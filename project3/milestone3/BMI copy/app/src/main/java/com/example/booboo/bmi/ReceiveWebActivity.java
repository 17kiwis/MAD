package com.example.booboo.bmi;

import android.content.Intent;
import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;

public class ReceiveWebActivity extends AppCompatActivity {

    private String web;
    private String webURL;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_receive_web);

        Intent intent = getIntent();
        web = intent.getStringExtra("webName");
        webURL = intent.getStringExtra("webURL");
        System.out.println(web);
        System.out.println(webURL);

        TextView messageView = (TextView) findViewById(R.id.sugweb);
        messageView.setText("The website " + web +" has great information on how to improve your health");

        final ImageButton imageButton = (ImageButton) findViewById(R.id.imageButton);
        //create listener
        View.OnClickListener onclick = new View.OnClickListener(){
            public void onClick(View view){
                loadWebSite(view);
            }
        };
        //add listener to the button

        imageButton.setOnClickListener(onclick);}
    public void loadWebSite(View view){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(webURL));
        startActivity(intent);
}
}
