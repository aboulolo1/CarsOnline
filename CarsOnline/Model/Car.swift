//
//	Car.swift
//
//	Create by Alaa on 15/7/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Car{

	var auctionInfo : AuctionInfo!
	var bodyAr : String!
	var bodyEn : String!
	var bodyId : Int!
	var carID : Int!
	var descriptionAr : String!
	var descriptionEn : String!
	var image : String!
	var imgCount : Int!
	var makeAr : String!
	var makeEn : String!
	var makeID : Int!
	var mileage : String!
	var modelAr : String!
	var modelEn : String!
	var modelID : Int!
	var sharingLink : String!
	var sharingMsgAr : String!
	var sharingMsgEn : String!
	var year : Int!
    var endTime : String!
    var imgUrl : String!
    var timeUnderFiveMin:Bool!
    var carUpdate:Bool!

	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		if let auctionInfoData = dictionary["AuctionInfo"] as? [String:Any]{
				auctionInfo = AuctionInfo(fromDictionary: auctionInfoData)
			}
		bodyAr = dictionary["bodyAr"] as? String
		bodyEn = dictionary["bodyEn"] as? String
		bodyId = dictionary["bodyId"] as? Int
		carID = dictionary["carID"] as? Int
		descriptionAr = dictionary["descriptionAr"] as? String
		descriptionEn = dictionary["descriptionEn"] as? String
		image = dictionary["image"] as? String
		imgCount = dictionary["imgCount"] as? Int
		makeAr = dictionary["makeAr"] as? String
		makeEn = dictionary["makeEn"] as? String
		makeID = dictionary["makeID"] as? Int
		mileage = dictionary["mileage"] as? String
		modelAr = dictionary["modelAr"] as? String
		modelEn = dictionary["modelEn"] as? String
		modelID = dictionary["modelID"] as? Int
		sharingLink = dictionary["sharingLink"] as? String
		sharingMsgAr = dictionary["sharingMsgAr"] as? String
		sharingMsgEn = dictionary["sharingMsgEn"] as? String
		year = dictionary["year"] as? Int
        imgUrl = image.replacingOccurrences(of: "[w]", with: "300").replacingOccurrences(of: "[h]", with: "300")

        endTime = Helper.seconds2Timestamp(intSeconds: auctionInfo.endDate).0
        timeUnderFiveMin = Helper.seconds2Timestamp(intSeconds: auctionInfo.endDate).1
        carUpdate = false
        
	}

}
