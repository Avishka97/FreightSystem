package com.example.myapplication;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import java.sql.Connection;
import java.sql.Statement;

import androidx.appcompat.app.AppCompatActivity;

public class Signup_form extends AppCompatActivity {


    ConnectionClass connectionClass;
    EditText FullName,UserName,Email,Password,CPassword;
    Button btnlogin;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_signup_form);
        getSupportActionBar().setTitle("Signup Form");


    }

    public void btn_Reg(View view) {
        connectionClass = new ConnectionClass();
        FullName = (EditText) findViewById(R.id.txtName);
        UserName = (EditText) findViewById(R.id.txtUserName);
        Email = (EditText) findViewById(R.id.txtEmail);
        Password = (EditText) findViewById(R.id.txtPassword);
        CPassword = (EditText) findViewById(R.id.txtCPassword);
        btnlogin = (Button) findViewById(R.id.btnReg);

        String Name = FullName.getText().toString();
        String Username = UserName.getText().toString();
        String email = Email.getText().toString();
        String password = Password.getText().toString();
        String cPassword = CPassword.getText().toString();
        String z="";

        if(Password.getText().toString().equals(CPassword.getText().toString()))
        {
            try {
            Connection con = connectionClass.CONN();
            if (con == null) {
                z = "Error in connection with SQL server";
                TextView textView = (TextView) findViewById(R.id.lblerror);
                textView.setText(z);
            } else {
                String query = "INSERT INTO Admin(Name,Username,Password,Email,Role) VALUES('"+Name+"','"+Username+"','"+password+"','"+email+"','CUSTOMER')";
                Statement stmt = con.createStatement();
                stmt.executeUpdate(query);
                z = "Login successfully";
                TextView textView = (TextView) findViewById(R.id.lblerror);
                textView.setText(z);

                TextView textView1 = (EditText) findViewById(R.id.txtName);
                textView1.setText("");
                TextView textView2 = (EditText) findViewById(R.id.txtUserName);
                textView2.setText("");
                TextView textView3 = (EditText) findViewById(R.id.txtEmail);
                textView3.setText("");
                TextView textView4 = (EditText) findViewById(R.id.txtPassword);
                textView4.setText("");
                TextView textView5 = (EditText) findViewById(R.id.txtCPassword);
                textView5.setText("");


            }
            }
            catch (Exception ex)
            {
                z = "Exceptions";
                TextView textView = (TextView) findViewById(R.id.lblerror);
                textView.setText(z);

                TextView textView1 = (EditText) findViewById(R.id.txtName);
                textView1.setText("");
                TextView textView2 = (EditText) findViewById(R.id.txtUserName);
                textView2.setText("");
                TextView textView3 = (EditText) findViewById(R.id.txtEmail);
                textView3.setText("");
                TextView textView4 = (EditText) findViewById(R.id.txtPassword);
                textView4.setText("");
                TextView textView5 = (EditText) findViewById(R.id.txtCPassword);
                textView5.setText("");
            }
        }
        else
        {
            z = "Password Doesnt match";
            TextView textView = (TextView) findViewById(R.id.lblerror);
            textView.setText(z);

            TextView textView1 = (EditText) findViewById(R.id.txtName);
            textView1.setText("");
            TextView textView2 = (EditText) findViewById(R.id.txtUserName);
            textView2.setText("");
            TextView textView3 = (EditText) findViewById(R.id.txtEmail);
            textView3.setText("");
            TextView textView4 = (EditText) findViewById(R.id.txtPassword);
            textView4.setText("");
            TextView textView5 = (EditText) findViewById(R.id.txtCPassword);
            textView5.setText("");
        }

    }
}
