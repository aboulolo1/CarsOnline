//
//  CarsOnlinePresenter.swift
//  CarsOnline
//
//  Created by Alaa on 7/15/18.
//  Copyright © 2018 Alaa. All rights reserved.
//

import UIKit
protocol CarsOnlineDelegate:NSObjectProtocol {
    func requestDidSucess(cars:[Car])
    func requestDidFailed(message:String)
}
class CarsOnlinePresenter: NSObject {
    fileprivate var delegate:CarsOnlineDelegate?
    fileprivate var timeInterval :Int!
    fileprivate var cars :[Car] = []
    fileprivate var timer = Timer()

    init(delegate:CarsOnlineDelegate) {
        super.init()
        self.delegate = delegate
    }
    func getCarsOnline()  {
        let carsOnlineApe = CarsOnlineApi()
        let apiManager = AllCarsOnlinsAPi(api: carsOnlineApe, delegate: self)
        apiManager.excuteApi()
    }
    func getCarsOnlineWithInterval(ticks:String) {
        let carsOnlineIntervalApi = CarsOnlineIntervalApi()
        carsOnlineIntervalApi.ticks = ticks
        let apiManager = AllCarsOnlinsAPi(api: carsOnlineIntervalApi, delegate: self)
        apiManager.excuteApi()
    }
}

extension CarsOnlinePresenter:RequestDelegate
{
    func requestDidSucess(response: Any, api: Api) {
        let carsOnline = response as! CarsOnline
        self.timeInterval = carsOnline.refreshInterval
        timer.invalidate()
           timer = Timer.scheduledTimer(withTimeInterval: Double(timeInterval), repeats: true) {
            (_) in
self.getCarsOnlineWithInterval(ticks:carsOnline.ticks)        }

        if api is CarsOnlineApi {
            self.cars = carsOnline.cars
        }
        else
        {
            for carUpdate in carsOnline.cars
            {
                if let carUpdateObj = cars.index(where: {$0.carID == carUpdate.carID}) {
                    cars[carUpdateObj] = carUpdate
                    cars[carUpdateObj].carUpdate = true
                }
            }
        }
        self.delegate?.requestDidSucess(cars: cars)

    }
    
    func requestDidFailed(message: String, api: Api) {
        timer.invalidate()
        self.delegate?.requestDidFailed(message: message)
    }
    
    
}
