//
//  NewContactController.swift
//  ContactsTableView
//
//  Created by Кордюков Андрей on 14.02.23.
//

import Foundation
import UIKit

class NewContactController: UIViewController {
    
    @IBOutlet weak var contactNameField: UITextField!
    
    @IBOutlet weak var contactsPhoneField: UITextField!
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    @IBAction func cancelButton(_ sender:UIBarButtonItem) {
        
        navigationController?.viewControllers.forEach({ viewController in
            if viewController is ViewControllerTableView {
                navigationController?.popToViewController(viewController, animated: true)
            }
        })
                
    }
    
    
    @IBAction func saveContactButton(_ sender: Any) {
        let newContact = Contact(name: "", phone: "")
        newContact.name = contactNameField.text ?? ""
        newContact.phone = contactsPhoneField.text ?? ""
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "ViewControllerTableView") as? ViewControllerTableView else {
            return
        }
        viewController.contacts.append(newContact)        
    }
}
