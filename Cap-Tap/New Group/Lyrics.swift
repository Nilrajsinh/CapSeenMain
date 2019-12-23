//
//  Lyrics.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 21/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Lyrics: UITableViewController, GADInterstitialDelegate {
    
      var interstitial: GADInterstitial!
    
    var Lyrics = [
       
        "People look at you and say you changed, as if you worked hard to stay the same",
        "Even though you're fed up, you gotta keep your head up",
        "l am not Jasmine. I am Aladdin",
        "Nothing can stop me. I'm all the way up",
        "Got so many chains they call me Chaining Tatum",
        "Alll do is win win win no matter what",
        "Didn't they tell youl was savage?",
        "Work it, make it, do it, makes us: harder, better, faster, stronger",
        "l'd like to stay here for a while and go wild",
        "My excuse is that Il'm young",
        "I'm an ordinary person but I'm paid",
        "You make me so happy, it turns back to sad",
        "Truth comes out when we're blacking out",
        "Sometimes the wrong ones are just what you need",
        "It won't be easy, but I'm down for the ride",
        "IFl was you, l'd wanna be me too",
        "She acts like summer and walks like rain",
         "I could build a castle out of all the bricks they threw at me",
        "I think I'm ready for my close up",
        "Pictures of last night ended up online, I'm screwed",
        " 'l just keep on living, the way I want to live",
         "I got sinning on my mind",
        "Find me where the wild things are",
        "I got one less problem without ya",
         " 'm bringing sexy back",
        "We're always undercover",
         "1 don't care if you tear me apart",
        "There's no way I could be stopped,was coming for your spot",
         "Hello, it's me",
         " 've loved and I've lost but that's not what I see",
         "I need somebody who can take control",
         "Farewell tequila, so long margarita. And lady sativa, I hate to leave ya",
         "You know what you're doin' to me",
         "It's a hard time finding your' ",
        "I would sell my soul for a bit more",
         "Always wanted to be one of those freedom",
        "Singing me my favorite song.",
        "Take a piece of my heart and make it all your own",

        "Maybe, I'm just a kid in love",
        
        "I get a little bit nervous around you",
        "My mind is still wrapped around you",
        "I was hoping that I could get lost in your paradise But half of you is not enough for me",
        "Just remember the way that we lay under the stars",
        "Be my summer in a winter day love",
        "I'm obsessed with her, yeah' ",
        "And my heart started to race",
        "Should've told you not to go.",
        "You are the muse in the back of my mind",
        "What if my dad is right, and he says that you're the one",
        "No matter what you say, I won't love you less",
        "I'm free, falling all in ou",
        "I may be far, but never gone",
        "Baby, you light up my world like nobody else",
        "I'm in love with you and all these little things",
        " With your love, no one can drag me down",
        "But baby, running after you is like chasing the clouds",
        "Can we fall one more time?",
        "Midnight driving with the windows down.Socialfeds",
        "Even though you-re fed up, you gotta keep your head",
        "Either you play the game or watch the game play you",
        "Love is just a word, but you bring it definition",
        "Somewhere down the road might just meet up at the",
        "We ain't picture perfect but we worth the picture still",
        "I live for the nights that I can't remember with the",
        "I can see your sad even when you smile even when up",
        "be at least about an hour late",
        "worked that hard to stay the same",
        "people that I won't forget",
        "you laugh, I can see if in your eyes deep inside you wanna cry",
        "You make me so happy; it turns back to sad",
        "You could be the king but watch the queen conger",
         "T'm not a businessman, I'm a business, man",
        "You only get one shot, do not miss",
        "your chance to blow. This opportunity comes once in a lifetime.",
        "California love",
         "We gonna party like it's your birthday",
         "I got 99 problems, but [fillin the blank] ain't one",
         "The more money we come across, the more problerms we see",
        "Drop it like it's hot",
        " Only God Can Judge Me",
         "l'm feelin' myself",
         "To live doesn't mean you're alive",
        "I could build a castle out of all the bricks they threw at me",
        "I think I'm ready for my close up",
        "Pictures of last night ended up online, I'm screwed",
         " 'l just keep on living, the way I want to live",
        "I got sinning on my mind",
        "Find me where the wild things are",
        "I got one less problem without ya",
         "i'm bringing sexy back",
         "We're always un"
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
        return Lyrics.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = Lyrics[indexPath.row]

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
