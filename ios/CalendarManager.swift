//
//  CalendarManager.swift
//  SwiftBridge
//
//  Created by Michael Schwartz on 12/11/15.
//  Copyright © 2015 Facebook. All rights reserved.
//

import Foundation
// CalendarManager.swift

@objc(CalendarManager)
class CalendarManager: NSObject {
  
  @objc(addEvent:location:date:callback:)
  func addEvent(name: String, location: String, date: NSNumber, callback: RCTResponseSenderBlock) -> Void {
    // Date is ready to use!
    NSLog("%@ %@ %@", name, location, date) // Esto solo hace un print de los datos en la consola de Xcode
    let ret: [String : Any] = ["name": name, "location": location, "date": date]
    callback([ret, NSNull()]) //La primera posición es una respuesta correcta y la segunda es un error
  }
  
  open static func requiresMainQueueSetup() -> Bool {
    return true;
  }
  
  func constantsToExport() -> [AnyHashable: Any]! {
    print("constantsToExport")
    return ["variable1": 1, "variable2": "dos"] // Estos datos son los que regresa el modulo por defecto
  }
  
}
