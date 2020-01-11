//
//  Travel.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 29/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Travel: UITableViewController , GADInterstitialDelegate{
    var interstitial: GADInterstitial!
    
    
    var travell = ["I haven't been everywhere, but it's certainly on my bucket list",
    
    "Keep calm and travel on",
    "The tan will fade, but the memories will last forever",
    "All I need is Vitamin Sea",
    "An adventure a day keeps the doctor away",
    "Calories don't count, when you're on vacation. *insert food emojis*",
    "Wish life is a never-ending vacation",
    "Salty air, sun-kissed hair! What more could a girl ask for? insert wave and sun emojis*",
    "Up, up and away.. *insert airplane emoji*",
    "Wander often, Wander always.",
    "Jet lag is for amateurs.",
    "People should hand out sympathy cards, when you come back to work, after an amazing vacation",
    "Embrace bizarre travel plans",
    "Never stop doing things for the first time",
    "People don't take trips. Trips take people. Work hard, travel harder",
    "go where you feel the most alive",
    "trippin' on skies, sippin' waterfalls",
    "in the waves, mind at ease",
    "ocean breeze",
    "blue skies with a new sun lotion",
    "just livin' ",
    "grateful for this life",
    "good times & tan lines sun, please",
    "oh, the places you'll go",
    "live in the sunshine, swim in the sea, drink the wild air",
    "so far, so good",
    "you are exactly where you are supposed to be",
    "good things come to those who book flights",
    "backpack sac full of hyped up emotions",
    "Running to the gate is my cardio.",
    "Yeah, working is great..but have you tried travelling.",
    "It's bad manners to keep a vacation waiting.",
    "I followed my heart and it led me to the airport.",
    "Live a life you don't need a vacation from.",
    "Good things come to those, who book flights.",
    "Work hard. Travel harder. And more...",
     "If you could travel anywhere in the world, where would you go first?",
    "Hope you're enjoying work, I'l just be chillin' here in [destination]",
    "Leavin' on a jet plane",
    "Guess wherel am",
    "Work. Save. Travel. Repeat.",
    "Time for an adventure! doo",
        "Wanderlust",
        "Wouldn't wanna be anywhere else",
    "Be right back, exploring the world",
    " Itravel because you can always get more money, but you can never get more time OOO Oo",
    " Just gonna cross this off the bucket list..",
    "Imight not know who I am but I know where I want to be. Right here in",
    "My best stories are found within the",
    "Ihaven't been there yet but it's on my paradise.pages of my passport list",

    "wanderlusta strong desire to travel",
    "Join me on my next adventure!",
    "Travel is the only thing you buy that makes you richer",
    "All I need is Vitamin Sea",
    "1like taking the scenic route",
    "Take advantage of every opportunity you get because some things only happen once in a lifetime",
    "Fill your life with experiences so you always have a great story to tell",
    "If there is one advice I follow in life, iť's this - Travel more and Travel Lighter.",
    "Not all those who wander are lost",
    "Let the adventure begin.",
    "Traveling- it first leaves you speechless, and then it turns you into a storyteller.",
    "Up in the clouds, on my way to unknown things.",
    "All you need is love-a passport.",
    "I love airports. They are modern gates to adventures that take us to faraway lands. And the doorway back to our homesou",
    "The only way to an open mind is by taking a plane out into the open world.",
    "Come, get lost with me.",
    "Happiness is a plane ticket.",
    "Happiness is planning a trip to a new place.",
    "Friends that travel together stay together",
    "I'ma travel addict on the road to recovery. Just kidding.",
    "I'm on the road to the airport.",
    "airport, with tons of luggage.",
    "meet amazing people along the way and make",
    "My idea of a good workout - Running through the",
    "Traveling solo doesn't mean you're alone. You get to connections that lasta lifetime",]
    
let backgroundImage = UIImage(#imageLiteral(resourceName: "bg2"))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        interstitial = GADInterstitial(adUnitID: "ca-app-pub-8978960658795160/2397092070")
        let request = GADRequest()
        interstitial.load(request)
        interstitial = createAndLoadInterstitial()
         interstitial.delegate = self
        
        let imageView = UIImageView(image: backgroundImage)
                   self.tableView.backgroundView = imageView
        
        
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)
               let blurView = UIVisualEffectView(effect: blurEffect)
               blurView.frame = imageView.bounds
               imageView.addSubview(blurView)
               super.viewDidLoad()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
         interstitial = createAndLoadInterstitial()
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
        return travell.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell

        cell.Textlbl?.text = travell[indexPath.row]
               share = travell[indexPath.row]
        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
         tableView.deselectRow(at: indexPath, animated: true)
        
        if interstitial.isReady {
                 interstitial.present(fromRootViewController: self)
               }
        
         
        
         
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

    
    @IBAction func ShareBtn(_ sender: UIButton){

        
          let activityvc = UIActivityViewController(activityItems: [share], applicationActivities: nil)
            activityvc.popoverPresentationController?.sourceView = self.view
            present(activityvc, animated: true, completion: nil)
        }
     var share = ""
    
}
