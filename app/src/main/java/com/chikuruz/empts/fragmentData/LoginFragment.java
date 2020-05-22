package com.chikuruz.empts.fragmentData;


import android.app.Activity;
import android.content.Context;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.chikuruz.empts.MainActivity;
import com.chikuruz.empts.R;
import com.chikuruz.empts.User;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/**
 * A simple {@link Fragment} subclass.
 */
public class LoginFragment extends Fragment {

    private EditText empcode;
    private EditText userpassword;
    private Button login_button;
    private TextView fprgotpassText;
    OnLoginFormActivityListener LoginFormActivityListener;

    public interface OnLoginFormActivityListener{
        public void performForgortPassword();
        public void performLoginP(String fullname);
    }

    public LoginFragment() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_login, container, false);
        empcode = view.findViewById(R.id.empcode);
        userpassword = view.findViewById(R.id.password);
        login_button = view.findViewById(R.id.login_button);
        fprgotpassText = view.findViewById(R.id.fprgotpassText);
        fprgotpassText.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                LoginFormActivityListener.performForgortPassword();
            }
        });
        login_button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                MyperformLogin();
            }
        });
        return view;
    }

    @Override
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        Activity activity = (Activity) context;
        LoginFormActivityListener = (OnLoginFormActivityListener) activity;

    }
//    @Override
//    public void onAttach(Context context) {
//        super.onAttach(context);
//
//    }

    public void MyperformLogin(){
        String empnumber = empcode.getText().toString();
        String upassword = userpassword.getText().toString();
        Call<User> call = MainActivity.servicesapi.PerformLogin(empnumber,upassword);
        call.enqueue(new Callback<User>() {
            @Override
            public void onResponse(Call<User> call, Response<User> response) {
                if(response.body().getResponse().equals("Success")){
                    MainActivity.prefConfig.writeLoginStatus(true);
                    LoginFormActivityListener.performLoginP(response.body().getFullname());
                }
                else if(response.body().getResponse().equals("Failed")){
                    MainActivity.prefConfig.displayToast("Incrorrect credentials please try again or see IT Team for your account");
                }
            }

            @Override
            public void onFailure(Call<User> call, Throwable t) {

            }
        });
        empcode.setText("");
        userpassword.setText("");
    }

}
