package com.nativemoduleexample.mymodules;

import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;

/**
 * Created by noel on 12/13/17.
 */

public class MyNativeMethods extends ReactContextBaseJavaModule {
    public MyNativeMethods(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "MyNativeMethods";
    }

    @ReactMethod
    public void calcAverage(ReadableArray data_array, Callback responseCallback) {
        int length = data_array.size();
        responseCallback.invoke(length);
    }
}
