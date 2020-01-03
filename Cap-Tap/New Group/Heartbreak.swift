//
//  Heartbreak.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 29/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Heartbreak: UITableViewController , GADInterstitialDelegate {
    
    var interstitial: GADInterstitial!
    
    var heartbreak = [" Tears come straight from the heart",
     "Sometimes, at night, I hope to fall asleep before I fall apart",
     "I didn't change. You did. You stopped loving me",
      "Learning is a gift. Even if pain is the teacher!",
     "As a kid I was afraid of monsters under my bed but as I grow olderI realize they live inside my head",
     "Want to be happy? Care less",
     "Until you've heard my story, you have no idea",
     "Even when I'm sad, I show off my big smile anyways",
     "I miss you..",
     "The rumor is true, I'm sad. Again. Nicole Martins Ferreira",
     "u left me unsure",
     "i always feel like i'm never good enough",
     "i loved u when i never loved myself",
     "it wasn't rlly worth it giving u my heart when u didn't deserve it",
     "i don't understand this even the blind can see that u ain't gonna ride for me",
     "i don't know what i feel no more",
     "i thought u was down to ride but ain't nobody ride but me",
     "i disappoint myself",
     "i need a change the ways i be thinking maybe a fallen angel",
     "i'm slowly giving up",
     "my heart can't stand this damage",
     "i need a break from my own thoughts",
     "i miss the old , happy me",
     "so young ,so damaged",
     "even strong hearts break",
     "i'm not okay but i smile anyways",
     "it hurts ,but it's okay. i'm use to it",
     "O i wake up every morning wishing i didn't",
     "i'm just an angel that wants to go home",
     "maybe i was born to be sad",
     "The truth runs wild like a tear down a cheek",
     "I don't feel very interesting today Welcome to the struggle",
     "I am a museum full of art but you had ur eyes shut",
     "Why did you leave ?",
     "I love you, will never be delivered",
     "But...you had the option to try",
     "Oh darling, I'm kinda sorta lost",
     "Some stuff stick with me like a fly in a spiders web",
     "Lately I have felt disappointed in myself!",
     "Maybe forever is another fairytale",
     "making people happy is my medicine even if it's also my posion",
     "Sorry is the only thing l'm good at don't worry they said, now I don't have worries I have fear",
     "tired of all the troubles, they've been wasting my time.",
     "don't wait, the time will never be right.",
     "nobody cares unless you're beautiful or dead.",
     "turns out that no one can replace me, I'm permanent u can't erase me.",
     "cause darling i'ma nightmare dressed like a daydream.",
     "losin' you was my biggest win.",
     "the dreams in which i'm dying are the best i've ever had.",
     "who can enjoy of his memories, enjoys twice",
     "the more i try to get to you, the more we crash apart",
     "when you close your eyes, do you picture me?",
     "take a piece of my heart, and make it all your own, so when we are apart, you'll never be alone.",
     "sad birds still sing",
     "so much more was said in the unsaid.",
     "but you won't get to see the tears i cry.",
     "i told my story, then made history!",
     "how can i love when i'm afraid",
     "i have died everyday waiting for you",
     "and all along i believed i will find you.",
     "all of the moments that already Passed, we!|l try to go back and make them last",
     "so together, but so broken u inside",
     "missing you feels like breathing underwater. tonight im sleeping in te bottom of the ocean.",
     "when you say you want me, is it all of me or just one part?",
     "when i met you ali could think was damn, its gonna hurt when you leave. and men i was right.",
     "your words in my head, knives in my heart, you build me up and then i fall apart",
     "i lost someone who wasn't even mine, i let you walk right out my life",
     "i miss the days when life was simple.",
    
     "I gave you every piece of my heart, only to be left with nothing in the end",
     "Maybe being invisible to you is my superpower",
     "I'm sick of crying and tired of crying",
     "Maybe now you're just a stranger who knows all my secrets",
     "Your pretty little smile will always be my favorite",
         "Why do I still crave your hugs in the middle of the night?",
     "Only does the moon know how much l still miss you",
     "Deep down, I've begun to associate love with pain",
     "You know you broke me after knowing how much of a messI was",
     "I wish you were there for me when I needed you the most",
     "The most precious gift I got from you was your love"]
    

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
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
         tableView.deselectRow(at: indexPath, animated: true)
        
        if interstitial.isReady {
                 interstitial.present(fromRootViewController: self)
               }
        
         
         let cell = tableView.cellForRow(at: indexPath)
         UIPasteboard.general.string = cell?.textLabel?.text
         
         
     }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return heartbreak.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = heartbreak[indexPath.row]
               
        
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
