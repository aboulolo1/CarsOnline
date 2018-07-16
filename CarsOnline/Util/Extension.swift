//
//  Extension.swift
//  GlovoApp
//
//  Created by Alaa on 7/5/18.
//  Copyright © 2018 Alaa. All rights reserved.
//

import Foundation
import UIKit
extension UIViewController {
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message:
            message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
        }))
        self.present(alertController, animated: true, completion: nil)
    }
    
}
