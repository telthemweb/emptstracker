package com.chikuruz.empts;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import com.chikuruz.empts.BaseFragment.BaseFragment;
import com.chikuruz.empts.Services.Services;
import com.chikuruz.empts.fragmentData.ForgotTauzeniFragment;
import com.chikuruz.empts.fragmentData.HomeFragment;
import com.chikuruz.empts.fragmentData.LoginFragment;

public class MainActivity extends AppCompatActivity implements LoginFragment.OnLoginFormActivityListener {
    public static PrefConfig prefConfig;
    public static Services servicesapi;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        prefConfig = new PrefConfig(this);
        servicesapi = BaseFragment.getBaseFragment().create(Services.class);
        if (findViewById(R.id.fragement_container) !=null){
            if (savedInstanceState !=null)
            {
                return;
            }
            if (prefConfig.readLoginStatus())
            {
                getSupportFragmentManager().beginTransaction().add(R.id.fragement_container,new HomeFragment()).commit();
            }
            else{
                getSupportFragmentManager().beginTransaction().add(R.id.fragement_container,new LoginFragment()).commit();
            }

        }
    }

    @Override
    public void performForgortPassword() {
        getSupportFragmentManager().beginTransaction().replace(R.id.fragement_container,new ForgotTauzeniFragment()).commit();
    }

    @Override
    public void performLoginP(String fullname) {
        prefConfig.writeName(fullname);
        getSupportFragmentManager().beginTransaction().replace(R.id.fragement_container,new HomeFragment()).commit();
    }
}
