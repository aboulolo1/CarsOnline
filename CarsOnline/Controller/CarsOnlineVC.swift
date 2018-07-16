 //
//  CarsOnlineVC.swift
//  CarsOnline
//
//  Created by Alaa on 7/14/18.
//  Copyright © 2018 Alaa. All rights reserved.
//

import UIKit
 import ESPullToRefresh

class CarsOnlineVC: UIViewController {
    fileprivate var cars:[Car] = []
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    var carsOnlinePresenter:CarsOnlinePresenter?

    @IBOutlet weak var carsOnlineTB: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.activityIndicator.startAnimating()
        carsOnlinePresenter = CarsOnlinePresenter(delegate: self)
        self.carsOnlineTB.isHidden = true
        carsOnlinePresenter?.getCarsOnline()
    }
    override func viewWillAppear(_ animated: Bool) {
        self.carsOnlineTB.es.addPullToRefresh {
            [unowned self] in
            self.carsOnlinePresenter?.getCarsOnline()
            self.carsOnlineTB.es.stopPullToRefresh(ignoreDate: true)
            self.carsOnlineTB.es.stopPullToRefresh(ignoreDate: true, ignoreFooter: false)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
 extension CarsOnlineVC:CarsOnlineDelegate,UITableViewDelegate,UITableViewDataSource
 {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carsOnlineCell") as! CarsOnlineTableViewCell
        cell.updateView(car: self.cars[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    func requestDidSucess(cars: [Car]) {
        self.carsOnlineTB.isHidden = false
        self.activityIndicator.stopAnimating()
        self.cars = cars
        self.carsOnlineTB.reloadData()
    }
    
    func requestDidFailed(message: String) {
        self.carsOnlineTB.isHidden = false

        self.activityIndicator.stopAnimating()
        self.showAlert(title: "Error", message: message)
    }
    
    
 }
