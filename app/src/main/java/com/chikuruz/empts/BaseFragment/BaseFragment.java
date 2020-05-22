package com.chikuruz.empts.BaseFragment;

import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class BaseFragment {
    public static String BaseUrl = "http://www.mfx.co.zw/empts/api/";
    public  static Retrofit retrofit = null;

    public static Retrofit getBaseFragment() {
        if (retrofit == null){
            retrofit = new Retrofit.Builder().baseUrl(BaseUrl).addConverterFactory(GsonConverterFactory.create()).build();
        }
        return retrofit;
    }
}
