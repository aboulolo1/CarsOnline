//
//  Helper.swift
//  CarsOnline
//
//  Created by Alaa on 7/15/18.
//  Copyright © 2018 Alaa. All rights reserved.
//

import UIKit

class Helper: NSObject {
    static func seconds2Timestamp(intSeconds:Int)->(String,Bool) {
        let mins:Int = (intSeconds % 3600) / 60
        let hours:Int = intSeconds / 3600
        let secs:Int = (intSeconds % 3600) % 60
        var timeUnderFiveMin = false
        if hours <= 0 && mins<5 {
            timeUnderFiveMin = true
        }
        let strTimestamp:String = ((hours<10) ? "0" : "") + String(hours) + ":" + ((mins<10) ? "0" : "") + String(mins) + ":" + ((secs<10) ? "0" : "") + String(secs)
        return (strTimestamp,timeUnderFiveMin)
    }
}
