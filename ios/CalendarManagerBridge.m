//
//  CalendarManagerBridge.m
//  NativeModuleExample
//
//  Created by Noel Escobedo on 12/7/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

// CalendarManagerBridge.m
#import <React/RCTBridgeModule.h>
#import <React/RCTBridge.h>
#import <React/RCTEventDispatcher.h>

@interface RCT_EXTERN_MODULE(CalendarManager, NSObject)

RCT_EXTERN_METHOD(addEvent:(NSString *)name location:(NSString *)location date:(nonnull NSNumber *)date callback: (RCTResponseSenderBlock)callback)

@end
