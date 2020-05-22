package com.chikuruz.empts;

import com.google.gson.annotations.SerializedName;

public class User {
    @SerializedName("response")
    private String response;

    @SerializedName("fullname")
    private String fullname;

    @SerializedName("user_id")
    private String user_id;


    public String getResponse() {
        return response;
    }

    public String getFullname() {
        return fullname;
    }

    public String getUser_id() {
        return user_id;
    }
}
