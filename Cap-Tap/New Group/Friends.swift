//
//  Friends.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 29/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Friends: UITableViewController , GADInterstitialDelegate{
    var interstitial: GADInterstitial!
    
    
    var friends = [
    "I don’t know what’s tighter: our jeans or our friendship",
    "I think we’ll be friends forever because we’re too lazy to find new friends",
    "And it feels like wasted youth",
    "You say I’m dirty-minded, but how did you understand what I meant?",
    "Just remember, if we get caught, you’re deaf and I don’t speak English",
    "A friend is someone who knows all about you and still loves you",
    "Friends give you a shoulder to cry on. but best friends are ready with a shovel to hurt the person that made you cry.",
    "Love is blind; friendship tries not to notice.",
    "Friendship is like peeing in your pants. everyone can see it, but only you can feel the warm feeling inside.",
    "Cause I’m a ride or die, whether you fail or fly.",
    "True friends don’t judge each other, they judge other people together",
    "Everyone has a friend who laughs funnier than he jokes.",
    "Do I not destroy my enemies when I make them my friends?",
    "Finding friends with the same mental disorder: priceless!",
    "True friendship is when you walk into their house and your wifi connects automatically.",
    "We go together like coffee & doughnuts.",
    "Your existence is very imperative.",
    "Your camaraderie is the precious gift that God gifted me.",
    "I love to capture the moment with you.",
    "Our friendship will always shine like a beacon.",
    "Your demeanour is one of the special things I enjoy in life.",
    "Friends are the one who aspires you to make funny faces and take a selfie.",
    "Buddy is the one whose soul radiates beauty in my life.",
    "A friend is one who overlooks your broken fence and admires the flowers in your garden.",
    "Unexpected friendships are the best ones",
    "In the cookie of life, friends are the chocolate chips.",
    "Awards become corroded. friends gather no dust.",
    "As soon as I saw you, I knew an adventure was going to happen.",
    "Growing old is mandatory, growing up is optional.",
    "You’re pretty much my most favorite of all time in the history of ever.",
    "Keep calm and love your best friend.",
    "It’s the friends we meet along the way that help us appreciate the journey.",
    "Friends buy you a lunch. Best friends eat your lunch.",
    "Thank you for making me laugh.",
    "I Love The Nights I Can’t Remember With The Friends I’ll Never Forget.",
    "No man is a failure who has friends.",
    "I don’t know what’s tighter, our jeans or our friendship.",
    "I and my best friends can communicate just with…face expressions.",
    "Forever and Always.",
    "Life is nothing without friends.",
    "When a group of best friends meet..the humor is higher than comedy show.",
    "Do you remember the times we had? Let’s bring it back.",
    "We take photos as a return ticket to a moment otherwise gone.",
    "We go together like Coffee and Donuts.",
    "Best friends are the people you can do anything and nothing with and still have the best time.",
    "Truly great friends are hard to find, difficult to leave and impossible to forget.",
    "If being afraid is a crime, we hang side by side.",
    "We’ll be friends ’til we’re old and senile… then we’ll be new friends.",
    "We’re never done with killing time",
    "It’s not living (if it’s not with you)",
    "Meet my partner in crime",
    "She is my best friend. you break her heart, and I will break your face.",
    "I don’t even need to ask. I got you!",
    "Best friend? nah. she’s my sister.",
    "You can’t to epic shit with basic people.",
    "We all have that one friend who never learned how to whisper.",
    "She’s my best friend break her, I’ll break your face.",
    "We are going to be really cool old ladies",
    "Sometimes, being silly with a friend is the best therapy!",
    "Every tall girl needs a short best friend.",
    "hings are never quite as scary when you have a best friend.",
    "The language of friendship is not words but meanings.",
    "Besides chocolate, you’re my favourite.",
    "We go together like drunk and disorderly.",
    "Friends become our chosen family!",
    "A sweet friendship refreshes the soul!",
    "A friend is someone who knows the song in your heart and can sing it back to you when you have forgotten the words.",
    "Your friends love you anyway.",
    "Love is blind; friendship tries not to notice."]
    

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
        
         
         let cell = tableView.cellForRow(at: indexPath)
         UIPasteboard.general.string = cell?.textLabel?.text
         
         
     }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = friends[indexPath.row]
               

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
