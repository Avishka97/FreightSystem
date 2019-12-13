package com.example.myapplication;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import androidx.appcompat.app.AppCompatActivity;

public class Login_form extends AppCompatActivity {

    ConnectionClass connectionClass;
    EditText edtuserid,edtpass;
    Button btnlogin;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login_form);
        getSupportActionBar().setTitle("Login Form");

    }

    public void btn_Signup(View view) {
        startActivity(new Intent(getApplicationContext(),Signup_form.class));

    }

    public void btn_Login(View view) {
        connectionClass = new ConnectionClass();
        edtuserid = (EditText) findViewById(R.id.txtEmail);
        edtpass = (EditText) findViewById(R.id.txtPassword);
        btnlogin = (Button) findViewById(R.id.btnLogin);

        Boolean isSuccess = false;

        String userid = edtuserid.getText().toString();
        String password = edtpass.getText().toString();
        String z="";
            if(userid.trim().equals("")|| password.trim().equals(""))
            {
                z = "Please enter User Id and Password";
                TextView textView = (TextView) findViewById(R.id.lblerror);
                textView.setText(z);
            }
            else
            {
                try {
                    Connection con = connectionClass.CONN();
                    if (con == null) {
                        z = "Error in connection with SQL server";
                        TextView textView = (TextView) findViewById(R.id.lblerror);
                        textView.setText(z);
                    } else {
                        String query = "select * from Admin where Username='" + userid + "' and Password='" + password + "'";
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery(query);

                        if(rs.next())
                        {

                            z = "Login successfully";
                            TextView textView = (TextView) findViewById(R.id.lblerror);
                            textView.setText(z);
                            isSuccess=true;
                            startActivity(new Intent(getApplicationContext(),Customer.class));
                        }
                        else
                        {
                            z = "Invalid Credentials";
                            TextView textView = (TextView) findViewById(R.id.lblerror);
                            textView.setText(z);
                            isSuccess = false;
                        }

                    }
                }
                catch (Exception ex)
                {
                    isSuccess = false;
                    z = "Exceptions";
                    TextView textView = (TextView) findViewById(R.id.lblerror);
                    textView.setText(z);
                }
            }
        }

    }



