//
//  CarsOnlineApi.swift
//  CarsOnline
//
//  Created by Alaa on 7/15/18.
//  Copyright © 2018 Alaa. All rights reserved.
//

import UIKit

class CarsOnlineApi: Api {
    override func getApiName() -> String {
        return "carsonline"
    }
    override func parseResponse(response: [String : Any]) -> Any {
        let carsOnline = CarsOnline.init(fromDictionary: response)
        return carsOnline
    }
}
