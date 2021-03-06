//
//  TableViewController.swift
//  UITableViewExample
//
//  Created by Jason Liang on 2/15/17.
//  Copyright © 2017 Jason Liang. All rights reserved.
//

import UIKit
import SDWebImage

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      let nib = UINib(nibName: "TableViewCell", bundle: nil)
      
      self.tableView.register(nib, forCellReuseIdentifier: "nibCell")
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nibCell", for: indexPath)
    
      if let customCell = cell as? TableViewCell {
        customCell.label.text = "index \(indexPath.item)"
        customCell.imageView1.sd_setImage(with: URL(string: "http://lorempixel.com/120/\(100 + indexPath.item)/"), placeholderImage: nil)
        customCell.imageView2.sd_setImage(with: URL(string: "http://lorempixel.com/200/\(64 + indexPath.item)/"), placeholderImage: nil)
      }
      
//          cell.textLabel?.text = "index \(indexPath.item)"

        return cell
    }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 100
  }
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
