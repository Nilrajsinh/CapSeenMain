//
//  Hashtag.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 29/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class Hashtag: UITableViewController , GADInterstitialDelegate{
    var interstitial: GADInterstitial!
    

    var hashtag = [
   " #Fashion",

    "#Love",

    "#Instagood",

    "#Style",

    "#Repost",

    "#Like4like",

    "#Photooftheday",

    "#Ootd",
   " #Beautiful",

   " #Fitness",

    "#Follow",

    "#Beauty",

    "#Moda",

    "#Instagram",

    "#Followme",

   " #Cute",

   " #Picoftheday",

   " #Model",

   " #Girl",

  "  #Makeup",

  "  #Art",

   " #Likeforlike",

   " #Happy",

   " #Photography",

   " #Instadaily",

  "  #Like",

  "  #Follow4follow",

   " #Tbt",

   " #Travel",

    "#Lifestyle",

  "  #Instafashion",

  "  #Fashionblogger",

   " #Instalike",

   " #Food",

   " #Gym",

   " #Amazing",

   " #Motivation",

   " #Dress",

   " #Smile",

" #Selfie",

  "  #Fit",

   " #Me",

    " #Hair",

   " #Shopping",

    "#Fun",

    "#Blogger",

   " #Fashionista",

   " #Followforfollow",

   " #Shoes",

   " #Music",

   " #Hijab",

   " #Design",

  "  #Inspiration",

   " #Outfit",

  "  #Luxury",

  "  #Wedding",

   " #Girls",

   " #Summer",

   " #Life",

   " #Workout",

   " #Nature",

   " #Sale",

   " #Look",

   " #Photo",

   " #Streetstyle",

  "  #Bodybuilding",

   " #Tattoo",

   " #Trend",

   " #Stylish",

   " #Foodporn",

   " #Igers",

"  #Pretty",

   " #Sexy",

   " #Healthy",

   " #Usa",

  "  #Friends",

  "  #Paris",

   " #Miami",

  "  #Hot",

  "  #Instamood",


   " #fashionaddict",
    "#fashiondiaries",
    "#flashesofdelight",
   " #fashionstyle",
   " #fblogger",
    "#fbloggers",
   " #fromwhereistand",
   "  #ootd",
   "  #ootdbloggers",
    "#ootdmagazine",
    "#outfitdiaries",
    "#outfitoftheday",
     "#styleblog",
    "#styleinspo",
    "#styleoftheday",
    "#whatiwear",
     "#styleblog",
    "#stylecollective",
    "#stylegram",
    "#stylediaries "]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-8978960658795160/2397092070")
        let request = GADRequest()
        interstitial.load(request)
        interstitial = createAndLoadInterstitial()
         interstitial.delegate = self
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
         interstitial = createAndLoadInterstitial()
       }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
         tableView.deselectRow(at: indexPath, animated: true)
        
        if interstitial.isReady {
                 interstitial.present(fromRootViewController: self)
               }
        
         
         let cell = tableView.cellForRow(at: indexPath)
         UIPasteboard.general.string = cell?.textLabel?.text
         
         
     }
    
    func createAndLoadInterstitial() -> GADInterstitial {
         var interstitial = GADInterstitial(adUnitID: "ca-app-pub-8978960658795160/2397092070")
         interstitial.delegate = self
         interstitial.load(GADRequest())
         return interstitial
       }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return hashtag.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = hashtag[indexPath.row]
               
        
        // Configure the cell...

        return cell
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
                  UIView.animate(withDuration: 1.75, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                      cell.transform = CGAffineTransform.identity
                      }, completion: nil)
                  delayCounter += 1
              }
              
              
              
          }
    
    override func viewWillAppear(_ animated: Bool) {
               super.viewWillAppear(animated)
               animateTable()
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

}
