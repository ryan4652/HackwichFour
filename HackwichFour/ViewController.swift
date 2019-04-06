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
    
    var myFriends = ["Kapolei Kalapawai"]
    
    var restaurantImageData = [String()]

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return myFriends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
    
    let text = myFriends[indexPath.row]
      
        cell.textLabel?.text = text
        
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]

        }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        
        {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
            
        }


}

}

