package com.chikuruz.empts.fragmentData;


import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

import com.chikuruz.empts.MainActivity;
import com.chikuruz.empts.R;

/**
 * A simple {@link Fragment} subclass.
 */
public class HomeFragment extends Fragment {

    private TextView fullname_txt;
    private Button btnTracker;
    public HomeFragment() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_home, container, false);
        fullname_txt = view.findViewById(R.id.fullname);
        fullname_txt.setText(MainActivity.prefConfig.readName());
        btnTracker = view.findViewById(R.id.btnTracker);

        btnTracker.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                MainActivity.prefConfig.displayToast("Tracking.......");
            }
        });
        return view;
    }

}
