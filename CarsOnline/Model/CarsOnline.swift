//
//	RootClass.swift
//
//	Create by Alaa on 15/7/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct CarsOnline{

	var cars : [Car]!
	var error : Error!
	var refreshInterval : Int!
	var ticks : String!
	var alertAr : String!
	var alertEn : String!
	var count : Int!
	var endDate : Int!
	var sortDirection : String!
	var sortOption : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		cars = [Car]()
		if let carsArray = dictionary["Cars"] as? [[String:Any]]{
			for dic in carsArray{
				let value = Car(fromDictionary: dic)
				cars.append(value)
			}
		}
		if let errorData = dictionary["Error"] as? [String:Any]{
				error = Error(fromDictionary: errorData)
			}
		refreshInterval = dictionary["RefreshInterval"] as? Int
		ticks = dictionary["Ticks"] as? String
		alertAr = dictionary["alertAr"] as? String
		alertEn = dictionary["alertEn"] as? String
		count = dictionary["count"] as? Int
		endDate = dictionary["endDate"] as? Int
		sortDirection = dictionary["sortDirection"] as? String
		sortOption = dictionary["sortOption"] as? String
	}

}
