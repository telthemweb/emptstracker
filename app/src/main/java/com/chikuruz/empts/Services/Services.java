package com.chikuruz.empts.Services;

import com.chikuruz.empts.User;

import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.GET;
import retrofit2.http.Query;

public interface Services {
    @GET("login.php")
    Call<User> PerformLogin(@Query("empCode") String empCode, @Query("password") String password);
}
