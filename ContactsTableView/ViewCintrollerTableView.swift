//
//  ViewCintrollerTableView.swift
//  ContactsTableView
//
//  Created by Кордюков Андрей on 14.02.23.
//

import Foundation
import UIKit

class ViewControllerTableView : UIViewController {
    var contacts:[ContactProtocol] = [
    Contact(name: "Вася", phone: "+2893482394234"),
    Contact(name: "Жора", phone: "+3434234234222"),
    Contact(name: "Витя", phone: "+8339294662882"),
    Contact(name: "Дима", phone: "+8938230043434"),
    Contact(name: "Кирилл", phone: "+143893727223"),
    Contact(name: "Вова", phone: "+38900439343434"),
    Contact(name: "Сима", phone: "+37472387428929"),
    Contact(name: "Маша", phone: "+29888403002384"),
    Contact(name: "Саша", phone: "893489398483933"),
    Contact(name: "Иннокентий", phone: "+1955893921832389"),
    Contact(name: "Игорь", phone: "+343299983747733"),
    Contact(name: "Никита", phone: "+783398484333834"),
    Contact(name: "Майкл", phone: "+332833884393211"),
    Contact(name: "Артур", phone: "+38399283888333"),
    Contact(name: "Кузя", phone: "+83983988238433"),
    Contact(name: "wsdsf", phone: "fsdfs"),
    Contact(name: "kkdedsd", phone: "23iu543"),
    Contact(name: "voasdqqwe", phone: "ooooeeer"),
    Contact(name: "qiuworr", phone: "372dj8444"),
    Contact(name: "2323423", phone: "fnds443yuyy"),
    ]
    
    @IBOutlet weak var contactTableView: UITableView!
    let reuseIdentifireCell = "myCell"
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    func configuratedCell(cell:UITableViewCell, index:Int, contact:ContactProtocol) -> UITableViewCell{
        var configuration = cell.defaultContentConfiguration()
        configuration.text = contact.name
        configuration.secondaryText = contact.phone
        cell.contentConfiguration = configuration
        return cell
    }
    
    
    @IBAction func addContact(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "NewContactController") 
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}

extension ViewControllerTableView:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") else {
            print("новая ячейка \(indexPath.row)")
            let newCell = UITableViewCell(style: .default, reuseIdentifier: reuseIdentifireCell)
            return configuratedCell(cell: newCell, index: indexPath.row, contact: contacts[indexPath.row])
        }
        print("старая ячейка \(indexPath.row)")
        return configuratedCell(cell: cell, index: indexPath.row, contact: contacts[indexPath.row])
    }
    
    
}
