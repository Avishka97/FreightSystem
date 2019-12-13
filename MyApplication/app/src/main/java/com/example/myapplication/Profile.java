package com.example.myapplication;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import java.sql.Connection;
import java.sql.Statement;

import androidx.appcompat.app.AppCompatActivity;

public class Profile extends AppCompatActivity {

    ConnectionClass connectionClass;
    EditText Company,FName,Email,LName,Address,BAddress,Telephone,Mobile,Fax,Tax,Tin,Vat;
    Button btnSave;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_profile);
        getSupportActionBar().setTitle("Profile");
    }

    public void btn_Save(View view) {

        connectionClass = new ConnectionClass();
        Company = (EditText) findViewById(R.id.txtCompany);
        Email = (EditText) findViewById(R.id.txtEmail);
        FName = (EditText) findViewById(R.id.txtFirstName);
        LName = (EditText) findViewById(R.id.txtLastName);
        Address = (EditText) findViewById(R.id.txtAdd);
        BAddress = (EditText) findViewById(R.id.txtBillAdd);
        Telephone = (EditText) findViewById(R.id.txtTel);
        Mobile = (EditText) findViewById(R.id.txtmobile);
        Fax = (EditText) findViewById(R.id.txtFax);
        Tax = (EditText) findViewById(R.id.txtTaxNo);
        Vat = (EditText) findViewById(R.id.txtVat);
        Tin = (EditText) findViewById(R.id.txtTIN);
        btnSave = (Button) findViewById(R.id.btnReg);

        String company = Company.getText().toString();
        String email = Email.getText().toString();
        String fName = FName.getText().toString();
        String lName = LName.getText().toString();
        String address = Address.getText().toString();
        String baddress = BAddress.getText().toString();
        String telephone = Telephone.getText().toString();
        String mobile = Mobile.getText().toString();
        String fax = Fax.getText().toString();
        String tax = Tax.getText().toString();
        String vat = Vat.getText().toString();
        String tin = Tin.getText().toString();

        String z="";

        try {
            Connection con = connectionClass.CONN();
            if (con == null) {
                z = "Error in connection with SQL server";
                TextView textView = (TextView) findViewById(R.id.lblerror);
                textView.setText(z);
            } else {
                String query = "INSERT INTO Admin(Company,Email,FirstName,LastName,CAddress,BillingAddress,Telephone,Mobile,Fax,TaxNo,VatNo,TinNo) VALUES('"+company+"','"+email+"','"+fName+"','"+lName+"','"+address+"','"+baddress+"','"+telephone+"','"+mobile+"','"+fax+"','"+tax+"','"+vat+"','"+tin+"')";
                Statement stmt = con.createStatement();
                stmt.executeUpdate(query);
                z = "Profile created successfully";
                TextView textView = (TextView) findViewById(R.id.lblerror);
                textView.setText(z);

                TextView textView1 = (EditText) findViewById(R.id.txtCompany);
                textView1.setText("");
                TextView textView2 = (EditText) findViewById(R.id.txtEmail);
                textView2.setText("");
                TextView textView3 = (EditText) findViewById(R.id.txtFirstName);
                textView3.setText("");
                TextView textView4 = (EditText) findViewById(R.id.txtLastName);
                textView4.setText("");
                TextView textView5 = (EditText) findViewById(R.id.txtAdd);
                textView5.setText("");
                TextView textView6 = (EditText) findViewById(R.id.txtBillAdd);
                textView6.setText("");
                TextView textView7 = (EditText) findViewById(R.id.txtTel);
                textView7.setText("");
                TextView textView8 = (EditText) findViewById(R.id.txtmobile);
                textView8.setText("");
                TextView textView9 = (EditText) findViewById(R.id.txtFax);
                textView9.setText("");
                TextView textView10 = (EditText) findViewById(R.id.txtTaxNo);
                textView10.setText("");
                TextView textView11 = (EditText) findViewById(R.id.txtVat);
                textView11.setText("");
                TextView textView12 = (EditText) findViewById(R.id.txtTIN);
                textView12.setText("");


            }
        }
        catch (Exception ex)
        {
            z = "Exceptions";
            TextView textView = (TextView) findViewById(R.id.lblerror);
            textView.setText(z);

            TextView textView1 = (EditText) findViewById(R.id.txtCompany);
            textView1.setText("");
            TextView textView2 = (EditText) findViewById(R.id.txtEmail);
            textView2.setText("");
            TextView textView3 = (EditText) findViewById(R.id.txtFirstName);
            textView3.setText("");
            TextView textView4 = (EditText) findViewById(R.id.txtLastName);
            textView4.setText("");
            TextView textView5 = (EditText) findViewById(R.id.txtAdd);
            textView5.setText("");
            TextView textView6 = (EditText) findViewById(R.id.txtBillAdd);
            textView6.setText("");
            TextView textView7 = (EditText) findViewById(R.id.txtTel);
            textView7.setText("");
            TextView textView8 = (EditText) findViewById(R.id.txtmobile);
            textView8.setText("");
            TextView textView9 = (EditText) findViewById(R.id.txtFax);
            textView9.setText("");
            TextView textView10 = (EditText) findViewById(R.id.txtTaxNo);
            textView10.setText("");
            TextView textView11 = (EditText) findViewById(R.id.txtVat);
            textView11.setText("");
            TextView textView12 = (EditText) findViewById(R.id.txtTIN);
            textView12.setText("");
        }

    }
}
