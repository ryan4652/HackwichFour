//
//  ViewController.swift
//  HackwichFour
//
//  Created by Ryan B Domingo on 2/28/19.
//  Copyright © 2019 Ryan B Domingo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    var myFriends = ["Luca", "Destiny", "Cobi", "Matt", "Alika", "Ashley", "Shynia", "Landon", "Nate", "Arion", "Kylie", "Shanna", "Christine", "Jon"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return myFriends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
    
    let text = myFriends[indexPath.row]
      
        cell.textLabel?.text = text
        
        return cell

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

