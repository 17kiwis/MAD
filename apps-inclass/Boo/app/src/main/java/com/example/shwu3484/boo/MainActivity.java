package com.example.shwu3484.boo;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void sayBoo(View view) {
        TextView booText = (TextView) findViewById(R.id.message);
        EditText username = (EditText) findViewById(R.id.editText);
        String nameValue = username.getText().toString();
        //String with a Capital S is a class
        //to string. converted to string
        ImageView gost = (ImageView) findViewById(R.id.imageView);
        gost.setImageResource(R.drawable.gost);
        booText.setText("Happy Halloween~" + nameValue + "!");
    }
}
