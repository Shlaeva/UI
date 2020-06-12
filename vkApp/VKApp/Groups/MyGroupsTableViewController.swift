//
//  FriendsGroupsTableViewController.swift
//  VKApp
//
//  Created by Julie on 15.05.2020.
//  Copyright © 2020 YuliaShlaeva. All rights reserved.
//

import UIKit

var mygroup: [GroupData] = [GroupData(groupName: "Sun", groupImage: UIImage(named:"su")!),
   GroupData(groupName: "Mercury", groupImage: UIImage(named:"me")!)]
   
   

class MyGroupsTableViewController: UITableViewController {

   
    
    
    @IBOutlet var myGroupsTableView: UITableView!
   
    
    @IBAction func addGroup (segue: UIStoryboardSegue) {
           
           if segue.identifier == "addGroup" {
               guard let GroupsTableViewController = segue.source as? GroupsTableViewController else { return }
               if let indexPath = GroupsTableViewController.tableView.indexPathForSelectedRow {
                let newGroup = GroupsTableViewController.group[indexPath.row]
                //print(newGroup)
                if !mygroup.contains(newGroup) {
                mygroup.append(newGroup)
                   tableView.reloadData()
                    }
                }
            }
           }
      
       
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mygroup.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//       let cell = UITableViewCell()
//        cell.textLabel?.text = "My Group"
         let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupCell", for: indexPath) as! MyGroupTableViewCell
        
        cell.myGroupName.text = mygroup[indexPath.row].groupName
        cell.myGroupImage.image = mygroup[indexPath.row].groupImage


        return cell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            mygroup.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
        
    
}


