//
//  NewNoteViewController.swift
//  BubblePin
//
//  Created by STEVEN HOBERG on 12/7/22.
//

import UIKit

class NewNoteViewController: UIViewController {

    @IBOutlet weak var segmentedControlOutlet: UISegmentedControl!
    @IBOutlet weak var nameInput: UITextField!
    //var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addNoteButton(_ sender: UIButton) {
        switch segmentedControlOutlet {
        case <#pattern#>:
            <#code#>
        default:
            <#code#>
        }
        if (nameInput.text == "" )||(nameInput.text == null){
            return
        }
        else{
            AppData.noteList.append(Item(name: nameInput.text, type: segmentedControlOutlet.selectedSegmentIndex., favorite: <#T##Bool#>, id: <#T##Int#>))
        }
        
    }
    

}
