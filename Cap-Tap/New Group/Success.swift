//
//  Success.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 29/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class Success: UITableViewController , GADInterstitialDelegate {
    
    var interstitial: GADInterstitial!
    
    var success = [
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
    "You can regret a lot of things but you’ll never regret being kind",
    "Do whatever makes you happiest",
    "Having the dream is easy, making it come true is hard",
    "Decluttering my life like Marie Kondo",
    "If I were rich, I’d pull a Netflix and spend $100 million on my Friends",
    "In 2019, I want to be as Insta famous as an egg and as ageless as Paul Rudd",
    "Can’t hear, can’t speak, can’t see.",
    "Be heroes of your own stories",
    "Hella fine and it works every time",
    "My life is as crooked as Rami Malek’s bowtie",
    "We did it!",
    "Work hard then work harder",
    "Hustlin’ ",
    "When daydreams become reality",
    "Say yes, take risks, and live life on your own terms",
    "The impossible is now possible",
    "Perseverance pays… a lot!",
    "It wasn’t always easy but it’s worth it",
    "Pursue your passion and you’ll never work a day in your life",
    "Entrepreneur life",
    "The only person who can define your limits is You. But, even then, it’s not necessary that you have to take yourself seriously. #goahead",
    "When you grow, some people have to go. ",
    "Your gut feeling is your guardian angel.",
    "Sometimes the best adventure is a great conversation.",
    "Something special is coming your way. Are you ready?",
    "Everyone has a chapter that cannot be read aloud.",
    "Don’t trust all that you see. Even salt masquerades as sugar.",
    "Beauty may attract the eye, but it’s personality that wins the heart.",
    "Do what you love and love what you do.",
    "People told me I’d never get far. It looks like they were right, I got even further.",
    "There’s never a better day to start than today. ",
    "I don’t have enough time is no excuse. You have exactly the same number of hours as given to Albert Einstein, Leonardo Da Vinci, and Michelangelo. ",
    "Day by day nothing changes, but when you look back, it’s all changed.",
    "Remember today is the first day of the rest of your life. ",
    "Nobody has the power to go back and create a new beginning. But everyone has the power to start now to make a fresh ending.",
    "When in doubt, always choose change.",
    "The only thing that’s constant in the world is change.",
    "Wherever you go, go with all your heart.",
    "Eighty percent of your success depends on getting up and showing up.",
    "An obstacle is nothing but a stepping stone in disguise.",
    "Turn your fears into curiosity.",
    "In life, you regret nothing but the chances that you didn’t take. Go ahead, give it a try. ",
    "Learn from yesterday, live for today, hope for tomorrow.",
    "You learn the best when you teach others.",
    "If not me, who? If not now, When?",
    "Do something that scares you",
    "Small men, dream small, while big men dream big.",
    "Hope for the best, but prepare for the worst.",
    "A boat may be safest in the harbor, but it isn’t what boats are made for.",
    "If you haven’t tried something that makes your heart go crazy, then you haven’t lived at all.",


    "Live to express and not to impress.",
    "Life is about making an impact and not an income.",
    "If you can dream it, you can achieve it.",
    "Life is what happens when you’re busy making other plans.",
    "Every child is born an artist. The real challenge is in helping him become one when he grows up.",
    "You know you’ve got parenting nailed down, if your children run into your arms, when you’ve got nothing to give them.",
    "You become what you dream.",
    "Either you run your life, or your life runs you.",
    "Believing you can is half the battle.",
    "Life isn’t about finding yourself. It’s about creating yourself.",
    "Life is like driving a car. If you keep on looking at the rearview mirror, you not only miss what’s ahead, but you may end up crashing."]
    

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
    
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
         tableView.deselectRow(at: indexPath, animated: true)
        
        if interstitial.isReady {
                 interstitial.present(fromRootViewController: self)
               }
        
         
       
     }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return success.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell
        cell.Textlbl?.text = success[indexPath.row]
               

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
