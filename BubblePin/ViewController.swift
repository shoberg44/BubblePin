//
//  ViewController.swift
//  BubblePin
//
//  Created by STEVEN HOBERG on 12/1/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableViewOutlet: UITableView! //noteCell is the identifier of custom cell
    
    var noteList : [Item] = [] //make a Item parent class
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        noteList.append(Item(name: "Test Name", type: "N/A", favorite: false, id: 1))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noteList.count //number of rows in table view
    }
    //stoovier
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell")! as! CellClass
        cell.configure(titleLabel: noteList[indexPath.row].name, typeLabel: noteList[indexPath.row].type)
                return cell //returns data for cell
    }
    
    
    
}


