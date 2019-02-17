//
//  ViewController+Extensions.swift
//  Virtual Tourist
//
//  Created by Yasminْ 3bdul3ziz on 04/02/2019.
//  Copyright © 2019 Yasmin Abdulaziz. All rights reserved.
//

import UIKit

extension UIViewController {
    
    var appDelegate: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func save() {
        do {
            try CoreDataStack.shared().saveContext()
        } catch {
            showInfo(withTitle: "Error", withMessage: "Error while saving Pin location: \(error)")
        }
    }
    
    func showInfo(withTitle: String = "Info", withMessage: String, action: (() -> Void)? = nil) {
        performUIUpdatesOnMain {
            let alert = UIAlertController(title: withTitle, message: withMessage, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(alertAction) in
                action?()
            }))
            self.present(alert, animated: true)
        }
    }
    
    func performUIUpdatesOnMain(_ updates: @escaping () -> Void) {
        DispatchQueue.main.async {
            updates()
        }
    }
}


