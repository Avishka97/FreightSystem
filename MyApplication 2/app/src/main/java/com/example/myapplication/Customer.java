package com.example.myapplication;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;

import androidx.appcompat.app.AppCompatActivity;

public class Customer extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_customer);
        getSupportActionBar().setTitle("Home Page");
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {

        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.main_menu,menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {

        switch (item.getItemId()){
            case R.id.stats:
                Intent intent1 = new Intent(this, Statistics.class);
                this.startActivity(intent1);
                return true;
            case R.id.Profile:
                Intent intent2 = new Intent(this, Profile.class);
                this.startActivity(intent2);
                return true;
                default:
                    return super.onOptionsItemSelected(item);
        }


    }
}
