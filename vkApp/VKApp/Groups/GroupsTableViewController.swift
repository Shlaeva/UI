//
//  GroupsTableViewController.swift
//  VKApp
//
//  Created by Julie on 15.05.2020.
//  Copyright © 2020 YuliaShlaeva. All rights reserved.
//

import UIKit



class GroupsTableViewController: UITableViewController {

    
    var group: [GroupData] = [GroupData(groupName: "Mars", groupImage: UIImage(named: "ma")!),    GroupData(groupName: "Earth", groupImage: UIImage(named:"ea")!),
    GroupData(groupName: "Saturn", groupImage: UIImage(named:"sa")!),
    GroupData(groupName: "Sun", groupImage: UIImage(named:"su")!),
    GroupData(groupName: "Mercury", groupImage: UIImage(named:"me")!),
    GroupData(groupName: "Jupiter", groupImage: UIImage(named:"ju")!)]

   
    
    @IBOutlet var groupsTableView: UITableView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return group.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupTableViewCell
        
        cell.groupName.text = group[indexPath.row].groupName
        cell.groupImage.image = group[indexPath.row].groupImage
        
        return cell
    }
    
}
