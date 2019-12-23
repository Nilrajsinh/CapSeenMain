//
//  Boy.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 21/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Boy: UITableViewController, GADInterstitialDelegate {
    
      var interstitial: GADInterstitial!
    
    var boyy = [
        
      
        "They say don’t try this at home, so I went to my friend’s home.",
        "My bed is a magical place I suddenly remember everything I had to do.",
        "If there would be an award for being lazy, I would send someone to pick it up for me.",
        "They say: Do what you love, and the money will come to you. Just ordered pizza, now I am waiting.",
        "How I feel when there is no Coffee. DEPRESSO!",
        "Maybe if we tell people the brain is an app, they will start using it.",
        "A cop pulled me over and told me “Papers,” so I said “Scissors, I win!” and drove off.",
        "Mom: Why is everything on the floor? Me: Gravity!",
        "I followed a diet, but it didn’t follow me back, so I unfollowed it.",
        "Dear sleep: thanks for trying, but you can’t beat surfing the net.",
        "I don’t think inside the box, and I don’t think outside the box. I don’t even know where the box is.",
        "Do I run? Yes – out of time, patients and money.",
        "Lies I tell myself: Just one more cookie. Just one more movie. Just one more minute. Yet, I wouldn’t call them lies!",
        "They say, “Love is in the air.” Maybe that’s why there is so much air pollution these days.",
        "I didn’t choose the thug life; the thug life chose me.",
        "Need an ark? I Noah guy.",
        "The Monday-est Tuesday ever.",
        "Weekend, please don’t leave me.",
        "If I was funny, I would have a good Instagram caption.",
        "When Instagram was down, I ran around town shouting “like” at flowers, dogs, and expensive brunches.",
        "Whatever is good for your soul, do that",
        "Even the stars were jealous of the sparkle in her eyes",
        "Stress less and enjoy the best",
        "Get out there and live a little",
        "I’m not high maintenance, you’re just low effort",
        "I’m not gonna sugar coat the truth, I’m not Willy Wonka",
        "Life is better when you’re laughing",
        "Look for the magic in every moment",
        "Vodka may not be the answer but it’s worth a shot",
        "A sass a day keeps the basics away",
        "We searched a lot to find a competition but couldn’t get one.",
        "Fight On Boys!",
        "You pray for it, we work hard for it.",
        "Boys love sports, girls love players.",
        "Play smart, Work hard and Win easy.",
        "Pain is momentary, glory is forever.",
        "It’s a big game day.",
        "Champions play as one team.",
        "You can do it.",
        "Champions train losers complain.",
        "Say No to Defeat.",
        "My friends and I are the craziest human beings I have ever come across.",
        "Happiness is doing crazy things with you guys!",
        "Remember, if we get caught, you are dumb and I am deaf.",
        "What is tighter? Our denim or our friendship?",
        "It’s the best friend you can call at midnight and ask to get ready for a party.",
        "Best friends don’t feel bad when you insult them. They chuckle and call you something even more disgusting right back.",
        "With you people, my life is nothing less than an adventure.",
        "Having friends with the same mental disorder is pure bliss.",
        "Friends are meant to be disturbed all the time.",
        "Great times + Crazy friends= Unforgettable memories!",
        "Friends don’t allow you to do silly things alone!",
        "We are sent to this world as best friends because our moms wouldn’t manage us as brothers.",
        "People think I am introvert but my friends know that I am insane.",
        "I get the best sleep under the stars.",
        "Relationship status: Engaged with adventure",
        "Let’s find the place where the mobile network is weak.",
        "Life is all about travelling, fun and friends to accompany you.",
        "I find solace in the mountains.",
        "Travelling is my best therapy.",
        "Travelling turns me into a storyteller.",
        "Soaking in Vitamin C.",
        "It’s really bad to keep a vacation waiting.",
        "Getting lost will sometimes help you to find yourselves.",
        "All you need a destination and a bag pack to disappear from the mundane.",
        "Collect moments, leave footprints behind.",
        "Let’s buy one way flight ticket and never come back.",
        "Keep your squats low and moral high.",
        "Hustle for the muscle!",
        "I can and I will…Wait and watch me.",
        "Don’t stop until you have achieved it.",
        "Life is all about ups and downs, we call it squats.",
        "When my abs scream STOP, my mind shouts NEVER",
        "Abs is made in the gym, not in the kitchen.",
        "I believe in making results, not excuses.",
        "I lift heavy and push my limit to be the beast.",
        "I.P Fat!",
        "Excuses don’t build muscles.",
        "Get fit or go home."
       ]

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
    
    func createAndLoadInterstitial() -> GADInterstitial {
      var interstitial = GADInterstitial(adUnitID: "ca-app-pub-8978960658795160/2397092070")
      interstitial.delegate = self
      interstitial.load(GADRequest())
      return interstitial
    }

    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
      interstitial = createAndLoadInterstitial()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return boyy.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = boyy[indexPath.row]

        // Configure the cell...

        return cell
    }
    

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
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        if interstitial.isReady {
           interstitial.present(fromRootViewController: self)
         }
        
        
        let cell = tableView.cellForRow(at: indexPath)
        UIPasteboard.general.string = cell?.textLabel?.text
        
        
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
