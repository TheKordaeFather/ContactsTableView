//
//  Contact.swift
//  ContactsTableView
//
//  Created by Кордюков Андрей on 14.02.23.
//

import Foundation

protocol ContactProtocol {
    var name:String { get set }
    var phone:String { get set }
}

class Contact : ContactProtocol {
    var name: String
    var phone: String
    
    init(name:String, phone:String){
        self.name = name
        self.phone = phone
    }
}
