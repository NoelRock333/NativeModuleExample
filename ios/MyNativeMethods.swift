//
//  MyNativeMethods.swift
//  NativeModuleExample
//
//  Created by Noel Escobedo on 12/13/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation

@objc(MyNativeMethods)
class MyNativeMethods: NSObject {
  
  @objc(calcAverage:callback:)
  func calcAverage(data_array: NSArray, callback: RCTResponseSenderBlock) -> Void {
    // Date is ready to use!
    NSLog("%@ %@ %@", data_array) // Esto solo hace un print de los datos en la consola de Xcode
    //let ret: [String : Any] = ["data_array": data_array]
    let lenght: Int = data_array.count;
    var total: Int = 0;
    for value in data_array {
      total += value as! Int;
    }
    let averange: Int = total / lenght;
    
    callback([averange, NSNull()]) //La primera posición es una respuesta correcta y la segunda es un error
  }
  
  open static func requiresMainQueueSetup() -> Bool {
    return true;
  }
  
}
