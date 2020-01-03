//
//  HomePage.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 27/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit

class HomePage: UITableViewController {
    
    
    
   
    
    
   
   
    
    var MainCat = [
        ["Image":#imageLiteral(resourceName: "Attitude"),"Category":"Attitude"],
        ["Image":#imageLiteral(resourceName: "Sassy2"),"Category":"Sassy"],
        ["Image":#imageLiteral(resourceName: "Girl"),"Category":"Girl"],
        ["Image":#imageLiteral(resourceName: "Savage"),"Category":"Savage"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Boy"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Lit"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Bio"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Romantic"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Lyrics"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Food"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Fitness"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Funny"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Inspirational"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Life"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Success"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Birthday"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Season"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Travel"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Heartbreak"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Sad"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Beach"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Friends"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"Couple"],
        ["Image":#imageLiteral(resourceName: "Tipsy.png"),"Category":"#hashtag"]
   
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)

        blurEffectView.frame = self.view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        self.tableView.backgroundView = blurEffectView
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return MainCat.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomClass

        cell.Imagebg.image = MainCat[indexPath.row]["Image"] as! UIImage
        cell.label.text = MainCat[indexPath.row]["Category"] as! String
        // Configure the cell...

        return cell
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
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animateTable()
    }
    
    
    func animateTable() {
        tableView.reloadData()
       
        let cells = tableView.visibleCells
        
        let tableViewHeight = tableView.bounds.size.height
        
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableViewHeight)
        }
        
        var delayCounter = 0
        for cell in cells {
            UIView.animate(withDuration: 2.0, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
                }, completion: nil)
            delayCounter += 1
        }
        
        
        
    }

}

