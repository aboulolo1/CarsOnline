//
//  CarsOnlineTableViewCell.swift
//  CarsOnline
//
//  Created by Alaa on 7/15/18.
//  Copyright © 2018 Alaa. All rights reserved.
//

import UIKit
import SDWebImage
class CarsOnlineTableViewCell: UITableViewCell {
    @IBOutlet weak var bids: UILabel!
    @IBOutlet weak var imgCar: UIImageView!
    
    @IBOutlet weak var timeLeft: UILabel!
    @IBOutlet weak var lot: UILabel!
    @IBOutlet weak var currency: UILabel!
    @IBOutlet weak var priceCar: UILabel!
    @IBOutlet weak var carName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func updateView(car:Car) {
        self.bids.text = "\(car.auctionInfo.bids ?? 0)"
        self.imgCar.sd_setImage(with: URL(string: car.imgUrl), completed: nil)
        self.lot.text = "\(car.auctionInfo.lot ?? 0)"
        self.priceCar.text = "\(car.auctionInfo.currentPrice ?? 0)"
        self.timeLeft.text = car.endTime
        let preferredLanguage = NSLocale.preferredLanguages[0]
        if preferredLanguage.starts(with: "ar"){
            self.currency.text = car.auctionInfo.currencyAr
            self.carName.text = car.makeAr! + " " + car.modelAr! + " " + "\(car.year!)"
        } else{
            self.currency.text = car.auctionInfo.currencyEn
            self.carName.text = car.makeEn! + " " + car.modelEn! + " " + "\(car.year!)"
        }
        if car.timeUnderFiveMin {
            self.timeLeft.textColor = UIColor.red
        }
        else
        {
            self.timeLeft.textColor = UIColor.black
        }
        if car.carUpdate {
            self.backgroundColor = UIColor.lightGray.withAlphaComponent(0.5)
        }
        else
        {
            self.backgroundColor = UIColor.white

        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
