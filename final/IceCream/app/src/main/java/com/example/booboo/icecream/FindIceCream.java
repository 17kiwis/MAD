package com.example.booboo.icecream;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.ToggleButton;

public class FindIceCream extends AppCompatActivity {

    private Shops myShop = new Shops();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_find_ice_cream);


        //get button
        final Button button = (Button) findViewById(R.id.button);
        //create listener
        View.OnClickListener onclick = new View.OnClickListener() {
            public void onClick(View view) {
                findsweets(view);
            }
        };
        //add listener to the button
        button.setOnClickListener(onclick);

    }

//        //get button
//        final Button button4 = (Button) findViewById(R.id.button4);
//        //create listener
//        View.OnClickListener onclick1 = new View.OnClickListener(){
//            public void onClick(View view){
//                findShop(view);
//            }
//        };
//        //add listener to the button
//        button.setOnClickListener(onclick1);
//
//    }
//    public void findShop(View view) {
//        //get URL of suggested coffee shop
//        String suggestedCoffeeShopURL = myShop.getShopURL();
//        System.out.println(suggestedShop);
//        System.out.println(suggestedShopURL);
//
//        //create an intent
//        Intent intent = new Intent(this, ReceiveShop.class);
//
//
//        //pass data
//        intent.putExtra("ShopName", suggestedShop);
//        intent.putExtra("ShopURL", suggestedShopURL);
//
//
//        //start the intent
//        startActivity(intent);
//    }
//

    public void findsweets(View view) {
        //edittext
        EditText name = (EditText) findViewById(R.id.enter);
        String nameValue = name.getText().toString();
        System.out.println(nameValue);

        //spinner
        Spinner iceSpinner = (Spinner) findViewById(R.id.spinner);
        String iceValue = String.valueOf(iceSpinner.getSelectedItem());

        //toggle button
        ToggleButton toggle = (ToggleButton)findViewById(R.id.cuptoggleButton);
        boolean energy = toggle.isChecked();
        String cupString;
        if(energy){
            cupString="cup";
        } else {
            cupString="cone";
        }

        //switch
//        String meditate_string="";
//        Switch meditate_switch=(Switch)findViewById(R.id.switch1);
//        boolean meditate = meditate_switch.isChecked();
//        if (meditate){
//            meditate_string="that meditates";
//        }

        //radio buttons
        RadioGroup yoga =(RadioGroup)findViewById(R.id.iceRadioGroup);
        String icetype="";
        int yoga_id=yoga.getCheckedRadioButtonId();
        switch(yoga_id){
            case -1:
                icetype="no";
                break;
            case R.id.radioButton:
                icetype="ice cream";
                break;
            case R.id.radioButton2:
                icetype="frozen yogurt";
                break;
            case R.id.radioButton3:
                icetype="gelato";
                break;
            default:
                icetype="no";
        }

        //check boxes
        String checkbox_string="";
        CheckBox check1=(CheckBox)findViewById(R.id.checkBox);
        boolean checked1 = check1.isChecked();
        if(checked1){
            checkbox_string += " sprinkles";
        }

        CheckBox check2 = (CheckBox) findViewById(R.id.checkBox2);
        boolean checked2 = check2.isChecked();
        if(checked2){
            checkbox_string += " nuts";
        }

        CheckBox check3 = (CheckBox) findViewById(R.id.checkBox3);
        boolean checked3 = check3.isChecked();
        if(checked3){
            checkbox_string += " hit fudge";
        }



        //textview
        System.out.println("in method");
        TextView message = (TextView) findViewById(R.id.messagetextView);
        message.setText(" My " + nameValue + " is a " + iceValue + " " + icetype + " " + cupString + " " + " with" + checkbox_string + ".");
}
}