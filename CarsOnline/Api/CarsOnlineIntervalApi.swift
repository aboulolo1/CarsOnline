//
//  CarsOnlineIntervalApi.swift
//  CarsOnline
//
//  Created by Alaa on 7/16/18.
//  Copyright © 2018 Alaa. All rights reserved.
//

import UIKit

class CarsOnlineIntervalApi: Api {
     var ticks :String!

    override func getApiName() -> String {
        return "carsonline?Ticks="+ticks
    }
    override func parseResponse(response: [String : Any]) -> Any {
        let carsOnline = CarsOnline.init(fromDictionary: response)
        return carsOnline
    }

}
