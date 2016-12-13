package com.example.booboo.bmi;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    private EditText enterWeight;
    private EditText enterHeight;
    private EditText enterInches;
    private TextView BMIResult;
    private TextView bodyState;
    private Websites myWeb = new Websites();

    public void findWeb(View view){
        Spinner websSpinner = (Spinner)findViewById(R.id.spinner);

        Integer webs = websSpinner.getSelectedItemPosition();

        myWeb.setWebs(webs);

        String suggestedWebs = myWeb.getWeb();
        String suggestedWebsURL = myWeb.getWebURL();
        System.out.println(suggestedWebs);
        System.out.println(suggestedWebsURL);

        Intent intent = new Intent(this, ReceiveWebActivity.class);

        intent.putExtra("webName", suggestedWebs);
        intent.putExtra("webURL", suggestedWebsURL);
        startActivity(intent);
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        enterWeight = (EditText) findViewById(R.id.enterWeight);
        enterHeight = (EditText) findViewById(R.id.enterHeight);
        enterInches = (EditText) findViewById(R.id.enterInches);
        TextView BMIResult = (TextView) findViewById(R.id.BMIResult);
        TextView bodyState = (TextView) findViewById(R.id.bodyState);

        Button calculate = (Button) findViewById(R.id.calculate);

        calculate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                changeView(v);}
        });

    }

    private void findBMI(View view) {
        //button_calculate could be any name you want
        enterWeight = (EditText) findViewById(R.id.enterWeight);
        enterHeight = (EditText) findViewById(R.id.enterHeight);
        enterInches = (EditText) findViewById(R.id.enterInches);
        TextView BMIResult = (TextView) findViewById(R.id.BMIResult);
        TextView bodyState = (TextView) findViewById(R.id.bodyState);
        Button calculate = (Button) findViewById(R.id.calculate);
    }
public void changeView(View v) {
        double weight;
        double height;
        double bmi;
        float lb;
        float ft;
        float inches;
        String mess = "";
        String note = "";

         lb = Float.parseFloat(enterWeight.getText().toString());
         ft = Float.parseFloat(enterHeight.getText().toString());
        inches =Float.parseFloat(enterInches.getText().toString());

        height= ((ft * 12)+inches) * 0.025;
        weight= lb * 0.45;

        bmi = height * height;
        bmi = weight / bmi;

//                BMIResult.setText(String.valueOf(bmi));

        if (bmi < 18.5) {
            mess = "Underweight";
            note = "Need to eat more";
        } else if (bmi < 25 && bmi > 18.5) {
            mess = "Normal";
            note = "Nice work, keep it up.";
        } else if (bmi > 25 && bmi < 35.) {
            mess = "Overweight";
            note = "Visiting the gym will be a good idea";
        } else if (bmi > 35.) {
            mess = "Obese";
            note = "You would have a higher risk for blood pressure (hypertension),High blood glucose and many more.";
        }

        System.out.println("in method");
        TextView imessage = (TextView) findViewById(R.id.Message);
        imessage.setText(mess);
        TextView notes = (TextView) findViewById(R.id.notes);
        notes.setText(note);
        TextView bmiresult = (TextView) findViewById(R.id.BMIResult);
        bmiresult.setText(String.format("%.2f",bmi) );
//      bmiresult.setText(String.format("%.2f", bmi));



    final Button button = (Button) findViewById(R.id.findButton);
    //create listener
    View.OnClickListener onclick = new View.OnClickListener(){
        public void onClick(View view){
            findWeb(view);
        }
    };
    //add listener to the button
    button.setOnClickListener(onclick);
//                System.out.println("bmi");
//                TextView result = (TextView) findViewById(R.id.BMIResult);
//                result.setText("happy" + bmi);
//                BMIReslut.setText((int) bmi);
//                BMIResult.setText(String.valueOf(15));
    }


            //add listener to the button
//            calculate.setOnClickListener(onclick);


//        };
//
//        calculate.setOnClickListener(onclick);
//
//    }



}

