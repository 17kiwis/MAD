package com.example.shwu3484.feeling;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.ToggleButton;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void findMood(View view) {
        EditText name=(EditText)findViewById(R.id.nameEditText);
        String nameValue=name.getText().toString();
        //spinner
        Spinner moodSpinner=(Spinner)findViewById(R.id.spinner);
        String moodValue=String.valueOf(moodSpinner.getSelectedItem());


        //toggle button

        ToggleButton toggle = (ToggleButton)findViewById(R.id.energyToggleButton);
        boolean energy = toggle.isChecked();
        //bool doesn't return any thing, useds to store
        String energyString;
        if (energy) {

            energyString="positive";}
            else{
                energyString="negative";
            }

        //switch
        String meditate_string="";
        Switch meditate_switch = (Switch)findViewById(R.id.switch1);
        boolean meditate = meditate_switch.isChecked();
        if (meditate){
            meditate_string="that meditates";
        }

        //radio buttons
        RadioGroup yoga = (RadioGroup)findViewById(R.id.yogaRadioGroup);
        String yogatype="";
        int yoga_id=yoga.getCheckedRadioButtonId();
        switch (yoga_id){
            case -1:
                yogatype="no";
                break;
            case R.id.radioButton1:
                yogatype="Yin";
                break;
            case R.id.radioButton2:
                yogatype="Bikram";
                break;
            case R.id.radioButton3:
                yogatype="Hatha";
                break;
            default:
                yogatype="no";
        }

        //check box
        String checkbox_string="";
        CheckBox check1=(CheckBox) findViewById(R.id.checkBox1);
        boolean checked1 = check1.isChecked();
        if(checked1){
            checkbox_string += " conservative";
        }

        CheckBox check2 = (CheckBox) findViewById(R.id.checkBox2);
        boolean checked2 = check2.isChecked();
        if(checked2){
            checkbox_string += " enlightened";
        }

        CheckBox check3 = (CheckBox) findViewById(R.id.checkBox3);
        boolean checked3 = check3.isChecked();
        if(checked3){
            checkbox_string += " sarcastic";
        }

        CheckBox check4 = (CheckBox) findViewById(R.id.checkBox4);
        boolean checked4 = check4.isChecked();
        if(checked4){
            checkbox_string += " secretive";
        }
        //text View
        TextView feeling=(TextView)findViewById(R.id.feelingTextView);
        feeling.setText(nameValue + " is in a " + energyString + " person in a " + moodValue + " mood to create Android Apps! " + meditate_string + " and does " + yogatype + " yoga ");
        }
    }

