//
//  FriendsTableViewController.swift
//  VKApp
//
//  Created by Julie on 14.05.2020.
//  Copyright © 2020 YuliaShlaeva. All rights reserved.
//


 import UIKit

var friend: [FriendData] = [FriendData(friendName: "Water", friendAvatar: UIImage(named: "1")!),
   FriendData(friendName: "Space", friendAvatar: UIImage(named: "2")!),
   FriendData(friendName: "Earth", friendAvatar: UIImage(named: "3")!),
   FriendData(friendName: "Sky", friendAvatar: UIImage(named: "4")!),
   FriendData(friendName: "Fire", friendAvatar: UIImage(named: "5")!)]

class FriendsTableViewController: UITableViewController {

    
    @IBOutlet var friendsTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
        

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friend.count
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "showPictures" {
               let cell: FriendTableViewCell = sender as! FriendTableViewCell
               let friendName = cell.friendName.text!
               
               let PicturesCollectionViewController: PicturesCollectionViewController = segue.destination as! PicturesCollectionViewController
               PicturesCollectionViewController.key = friendName
           }
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //    let cell = UITableViewCell()
        //    cell.textLabel?.text = "My dear friend"
        
         let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! FriendTableViewCell
        
        cell.friendName.text = friend[indexPath.row].friendName
        cell.friendAvatar.image = friend[indexPath.row].friendAvatar
        return cell
    }

    
    
    
    
    
//    struct FriendData {
//        var friendName: String
//        var friendAvatar: UIImage
//    }
    
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let index = indexPath.row
//        print(index)
//    }


    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
*/
}
