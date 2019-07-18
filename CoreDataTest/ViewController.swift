//
//  ViewController.swift
//  CoreDataTest
//
//  Created by Rohan Kevin Broach on 6/20/19.
//  Copyright © 2019 rkbroach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var people = [String]() // empty array of strings
  
  @IBOutlet weak var nameList: UITableView!
  
  var tagList = [Int]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    people = ["Rohan" , "Akshay", "Megha", "Rahul", "Bharat", "Salman", "Shahrukh", "Aamir", "Ranveer", "Deepika", "Katrina", "Amitabh"]
    // Do any additional setup after loading the view.
  }
  
  
  
  
}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return people.count
  }
  
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath) as! DemoTableViewCell
    cell.textLabel?.text = people[indexPath.row]
    if tagList.count > 0{
        
        if tagList.contains(indexPath.row){
          cell.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        }
    
      
    }
      
    
    cell.nameButton.tag = indexPath.row
    cell.nameButton.addTarget(self, action: #selector(bgColorChange(_:)), for: .touchUpInside)
    
    return cell
  }
  
  
  @objc func bgColorChange (_ sender : UIButton) {
    let cell = nameList.cellForRow(at: IndexPath(row: sender.tag, section: 0)) as! DemoTableViewCell
    tagList.append(sender.tag)
    cell.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
    
    
  
  }
  
  
}

