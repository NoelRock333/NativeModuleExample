//
//  MyNativeMethodsBridge.m
//  NativeModuleExample
//
//  Created by Noel Escobedo on 12/13/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

// MyNativeMethods.m
#import <React/RCTBridgeModule.h>
#import <React/RCTBridge.h>
#import <React/RCTEventDispatcher.h>

@interface RCT_EXTERN_MODULE(MyNativeMethods, NSObject)

RCT_EXTERN_METHOD(calcAverage:(NSArray *)data_array callback: (RCTResponseSenderBlock)callback)

@end
