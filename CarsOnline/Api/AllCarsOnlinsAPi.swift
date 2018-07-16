//
//  AllCarsOnlinsAPi.swift
//  CarsOnline
//
//  Created by Alaa on 7/15/18.
//  Copyright © 2018 Alaa. All rights reserved.
//

import UIKit
import Alamofire

protocol RequestDelegate:NSObjectProtocol {
    func requestDidSucess(response:Any, api: Api)
    func requestDidFailed(message:String,api: Api)
}
class AllCarsOnlinsAPi: NSObject {
    fileprivate var api:Api!
    fileprivate var url:String = "http://api.emiratesauction.com/v2/"
    var delegate: RequestDelegate?
    init(api:Api,delegate:RequestDelegate) {
        self.api = api
        self.delegate = delegate
        url = url + self.api.getApiName()
    }
    func excuteApi()
    {
        
        Alamofire.request(url).responseJSON(completionHandler: { (response) in
            self.parseResponse(response: response)
        })
    }
    fileprivate func parseResponse(response:DataResponse<Any>) {
        guard response.result.isSuccess else {
            self.delegate?.requestDidFailed(message: (response.error?.localizedDescription)!, api: self.api)
            return
        }
        print(response.result.value ?? "")
        
            self.delegate?.requestDidSucess(response: api.parseResponse(response: response.result.value as! [String : Any]), api: api)
        
    }

}
