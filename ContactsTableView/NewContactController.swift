//
//  NewContactController.swift
//  ContactsTableView
//
//  Created by Кордюков Андрей on 14.02.23.
//

import Foundation
import UIKit

class NewContactController: UIViewController {
    
    @IBAction func cancelButton(_ sender:UIBarButtonItem) {
        
        navigationController?.viewControllers.forEach({ viewController in
            if viewController is ViewControllerTableView {
                navigationController?.popToViewController(viewController, animated: true)
            }
        })
        

        
    }
}
