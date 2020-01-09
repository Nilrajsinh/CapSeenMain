//
//  Birthday.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 29/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Birthday: UITableViewController , GADInterstitialDelegate {
    
    var interstitial: GADInterstitial!
    
    var Birthday = ["A year wiser",
    "Go shawty, it's my birthday",
    "Happy birthday to me!",
    "Having my cake and eating it too",
    "Making my birthday wish",
    "I'm officially [age]!",
    " Experience level: [age]",
    "It takes a long time to grow young Pablo Picasso",
    "Another year older, wiser, and happier Happy birthday to me!",
    
    "On this day, a queen was born",
    "Gonna party like my birthday... oh Nicole Martins Ferreira",
    "It's my birthday party and you're not invited",
    "Closing my eyes because I don't want to see you on my day",
    "I see absolutely no reason to start acting my age",
    "Turning my badass mode on 'cause it's my day.",
    "I will stay this age until further notice",
    "Another birthday? No problem",
    "I've decided that I won't age anymore",
    "At least I'm still a year younger than I'll be next year",
    "I hope I grow old enough to frighten babies with my looks",
    "Thanks for the extra special birthday wishes. To those of you who didn't wish me: You'll be unfriended tomorrow",
    "You don't need a Facebook reminder to remember my birthday",
    "It's my birthday so, you're allowed to take a piece of cake but not much",
    "I need your presence on my birthday more than your",
    "I wish more people would start talking about my birthday",
    "Blessed to see another year <3",
    "Keep calm and celebrate on",
    "Live your life and forget your age",
    "Hold on to your inner child as you grow older",
    "Hugs, kisses and lots of birthday witches!",
    "Making my years count instead of counting the years",
    "Thope the birthday cake is as sweet as me",
    "On this day, a queen was born",
    "Gonna party like it's my...cause it is Another year olde, none the wiser",
    "Go shawty, it's your birthday",
    "I'm happy to report that myrthe inner child is ageless",
    "Age is merely the number of years the world has been enjoying you",
    "We age not by years, but by stories Make a wish",
    "Old enough to know better but stil young enough to get away with it",
    "Turn my birthday into a lifestyle",
    "There's glitter on the floor at the party",
    "My youth is yours",
    "Never growing up",
    "The party just started",
    "I don't know about u but Im feeling (age)",
    "So this is what (age) feels like",
    "Gonna celebrate like it's my birthday cuz it is",
    "I'm just here for the birthday cake",
    "Birthday candles aren't the only things getting lit tonight",
    "On this day a queen was born",
    "thanks to everyone who made my xx years on earth the best",
    "xx years old but feeling like I've lived for 40 years already",
    "Please blow up the balloons because it's my birthday",
    "Today the sun shined a little extra, just for me!",
    "Waiting for my birthday cake",
    "It's party time 'cause it's my birthday",
    "Still crazy after all these years",
    "It's my birthday and l'l laugh all I want",
    "Happy birthday to the most amazing person on earth, which is me",
    "My birthday should be a holiday",
    "The most beautiful person was born this day",
    "This has been the best year yet",
    "Bring the cake, It's my birthday party!",
    "A year wiser",
    "Go shawty, it's my birthday",
    "Happy birthday to me!",
    " Having my cake and eating it too",
    " Making my birthday wish",
    "l'm officially [age]!",
    "Experience level: [age]",
    " It takes a long time to grow young - Pablo Picasso",
    "Another year older, wiser, and happier",
    "On this day, a queen was born. Happy birthday tomel",
    "Gonna party like my birthday... oh wait, it is!"]

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
        return Birthday.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell

        cell.Textlbl?.text = Birthday[indexPath.row]
               
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
