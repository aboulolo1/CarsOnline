//
//	AuctionInfo.swift
//
//	Create by Alaa on 15/7/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct AuctionInfo{

	var vATPercent : Int!
	var bids : Int!
	var currencyAr : String!
	var currencyEn : String!
	var currentPrice : Int!
	var endDate : Int!
	var endDateAr : String!
	var endDateEn : String!
	var iCarId : Int!
	var iVinNumber : String!
	var isModified : Int!
	var itemid : Int!
	var lot : Int!
	var minIncrement : Int!
	var priority : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		vATPercent = dictionary["VATPercent"] as? Int
		bids = dictionary["bids"] as? Int
		currencyAr = dictionary["currencyAr"] as? String
		currencyEn = dictionary["currencyEn"] as? String
		currentPrice = dictionary["currentPrice"] as? Int
		endDate = dictionary["endDate"] as? Int
		endDateAr = dictionary["endDateAr"] as? String
		endDateEn = dictionary["endDateEn"] as? String
		iCarId = dictionary["iCarId"] as? Int
		iVinNumber = dictionary["iVinNumber"] as? String
		isModified = dictionary["isModified"] as? Int
		itemid = dictionary["itemid"] as? Int
		lot = dictionary["lot"] as? Int
		minIncrement = dictionary["minIncrement"] as? Int
		priority = dictionary["priority"] as? Int
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if vATPercent != nil{
			dictionary["VATPercent"] = vATPercent
		}
		if bids != nil{
			dictionary["bids"] = bids
		}
		if currencyAr != nil{
			dictionary["currencyAr"] = currencyAr
		}
		if currencyEn != nil{
			dictionary["currencyEn"] = currencyEn
		}
		if currentPrice != nil{
			dictionary["currentPrice"] = currentPrice
		}
		if endDate != nil{
			dictionary["endDate"] = endDate
		}
		if endDateAr != nil{
			dictionary["endDateAr"] = endDateAr
		}
		if endDateEn != nil{
			dictionary["endDateEn"] = endDateEn
		}
		if iCarId != nil{
			dictionary["iCarId"] = iCarId
		}
		if iVinNumber != nil{
			dictionary["iVinNumber"] = iVinNumber
		}
		if isModified != nil{
			dictionary["isModified"] = isModified
		}
		if itemid != nil{
			dictionary["itemid"] = itemid
		}
		if lot != nil{
			dictionary["lot"] = lot
		}
		if minIncrement != nil{
			dictionary["minIncrement"] = minIncrement
		}
		if priority != nil{
			dictionary["priority"] = priority
		}
		return dictionary
	}

}