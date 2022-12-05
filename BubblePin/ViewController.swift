//
//  ViewController.swift
//  BubblePin
//
//  Created by STEVEN HOBERG on 12/1/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableViewOutlet: UITableView! //noteCell is the identifier of custom cell
    
    //var noteList : Item[] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 35 //number of rows in table view
    }
    //stoovier
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell")!
                cell.textLabel?.text = "Hello World!"
                return cell //returns data for cell
    }
    
    
    
}

