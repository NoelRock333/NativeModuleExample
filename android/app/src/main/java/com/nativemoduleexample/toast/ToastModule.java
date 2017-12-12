package com.nativemoduleexample.toast;

import android.widget.Toast;

import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

import java.util.Map;
import java.util.HashMap;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeMap;

/**
 * Created by noel on 12/11/17.
 */

public class ToastModule extends ReactContextBaseJavaModule {
    public ToastModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "ToastExample";
    }

    @Override
    public Map<String, Object> getConstants() {
        // Estos datos son los que regresa el modulo por defecto
        final Map<String, Object> constants = new HashMap<>();
        constants.put("variable1", 1);
        constants.put("variable2", "dos");
        return constants;
    }

    @ReactMethod
    public void show(String message, int duration) {
        Toast.makeText(getReactApplicationContext(), message, duration).show();
    }

    @ReactMethod
    public void addEvent(String name, String location, String date, Callback respuesta) {
        HashMap<String, String> hm = new HashMap<>();
        hm.put("ame", name);
        hm.put("location", location);
        hm.put("date", date);
        WritableMap map = new WritableNativeMap();
        for (Map.Entry<String, String> entry : hm.entrySet()) {
            map.putString(entry.getKey(), entry.getValue());
        }
        respuesta.invoke(map);
    }
}