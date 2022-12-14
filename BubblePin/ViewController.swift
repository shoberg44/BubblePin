//
//  ViewController.swift
//  BubblePin
//
//  Created by STEVEN HOBERG on 12/1/22.
//

import UIKit
class AppData{
    static var noteList : [Item] = [] //make a Item parent class
}
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableViewOutlet: UITableView! //noteCell is the identifier of custom cell
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        AppData.noteList.append(Item(name: "Test Name", type: "N/A", favorite: false, id: 2))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.noteList.count //number of rows in table view
    }
    //stoovier
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell")! as! CellClass
        cell.configure(titleLabel: AppData.noteList[indexPath.row].name, typeLabel: AppData.noteList[indexPath.row].type)
                return cell //returns data for cell
    }
    
    
    
}


