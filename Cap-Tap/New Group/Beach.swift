//
//  Beach.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 29/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Beach: UITableViewController , GADInterstitialDelegate{
    var interstitial: GADInterstitial!
    
    var Beach = [


    "Life is better at the Beach!",

    "Time spent at the BEACH is never wasted",

    "I followed my heart and it led me to the BEACH",

    "Life is a BEACH enjoy the WAVES",

    "Let the countdown to the Beach begin!",

    "I’m a true OCEANHOLIC!",

    "I need Vitamin SEA",

    "I’m happiest when floating in the sea",

    "I am happy anywhere I can see the OCEAN",

    "Eat..Beach..Sleep..Repeat..!!",

    "Forever BEACHY",

    "The smell of the ocean never gets old",

    "If there’s a will there’s a wave",

    "Happiness comes in waves",

    "Beach More Worry Less",

    "Don’t worry BEACH happy",

    "My love for you is deeper than the ocean",

    "I crave a love so deep the ocean would be jealous",

    "May your joys be as deep as the ocean",

    "Nothing soothes the soul like a walk on the Beach",

    "Beach therapy should be covered by health insurance ￼",

    "The best kind of therapy is beach therapy",

    "I need some Beach therapy",

    "The beach is my therapy session",

    "BEACH: Heaven On Earth",

    "Life is better in flip-flops",

    "The Beach, where doing absolutely nothing, is doing something",

    "The beach is calling, I must go..",

    "I think it’s time for a trip to the beach",

    "My dreams are made of sand and waves",

    "Dreams are made of sand and sun",

    "Dream higher than the sky and Deeper than the ocean",

    "Let the waves hit your feet & sand be your seat",

    "You can’t stop the waves, but you can learn to surf",

    "If you’re lucky enough to be at the beach, you’re lucky enough",

    "Love you to the beach & back",

    "I love you but I’ve chosen the BEACH",

    "All my troubles wash away in the water",

    "A little sand between your toes always takes away YOUR WOES",

    "Happiness is..sand between the toes",

    "Keep calm and feel the sand between your toes",

    "Sandy Toes & Sun kissed Nose",

    "Palm trees, ocean breeze, salty air, sun kissed hair, the endless summer take me there",

    "Ocean Air, Salty Hair",

    "Salt in the air, Sand in my hair",

    "Salt water running through my veins",

    "The cure for anything is salt water – sweat, tears, or the sea",

    "Salt Water heals everything",

    "I love the beach, and I love sunshine",

    "Sea Air the best Aromatherapy",

    "Let the waves of the sea be my therapy",

    "Sunshine is my favorite accessory",

    "She walks along the Beach",

    "I’m just a beachy kinda girl",

    "You can find me where the music meets the ocean",

    "Life takes you down many paths but my favorite one leads to the Beach",

    "Life’s a beach and I’m just playing the sand!",

    "Gone to the beach, be back never",

    "I’d rather be a the BEACH!",

    "I miss you! – The Beach",

    "I can leave the sea but the sea never leaves me",

    "I wonder if the beach misses me",

    "The SEA sings my name",

    "Somewhere there is an empty beach chair with my name on it",

    "I want to run the beach’s length, because it never ends!",

    "The ocean calms my restless soul",

    "The Beach Takes My Heart to a Place of Serenity and Peace",

    "The waves of the sea help me get back to me",

    "Child of the ocean",

    "Namast’ay At The Beach",

    "I love being on the beach – it’s my favorite place",

    "I miss being on beach vacation and never knowing what day of the week it is",

    "Because everyday should feel like a day at the beach",

    "The best days are beach days",

    "Mondays would be better at the BEACH",

    "Every Monday should be a BEACH day",

    "It’s time for a new adventure",

    "Let’s go to the beach",

    "Just Keep Swimming",

    "Every drop in the ocean counts",

    "The older I get, the more I just want to follow the ocean and summer",

    "Life’s a wave, catch it",

    "Hear the sound of the waves and relax",

    "The voice of the sea speaks to the soul",

    "A day at the beach restores the soul",

    "The sea lives in every one of us",

    "BEACH LIFE",

    "Stress Free Zone",

    "You are lucky enough to live by the sea",

    "Find me under the Palms!",

    "Find me where the waves are!",

    "Come sail away with me",

    "Catch me by the sea",

    "Sun, Sea, the Sand and ME",

    "I’m a certified Aquaholic",

    "Beach Boys/Girls",

    "Sea Seeker",

    "Feeling blue?",

    "Endless blues..!!",

    "Happiness is..a day at BEACH",

    "Happiness is..blue sea & white sand",

    "HAPPINESS COMES IN SALTY WATER",

    "The tans will fade, but the memories will last forever",

    "Good times and tan lines",

    "The sand may brush off, the salt may wash clean, the Tans may fade, but the memories will last forever",

    "Salty air makes for a happy heart!",

    "Salty but sweet..!!",

    "Seek to Sea More!",

    "Sun, Sand and Pineapple in hand",

    "Happier than a Sea gull with a french fry",

    "You can’t buy happiness, but you can buy ice cream on the beach",

    "I’ll have a side of beach with my morning coffee",

    "Sometimes, you just need a break, to a place you love, to get away from everything",

    "OCEAN LOVER",

    "SEAS THE DAY",

    "Over in the Ocean",

    "Made for the Sea",

    "All I want is to watch some waves roll in",

    "All I need is a few days at the Beach",

    "I need the sea because it teaches me",

    "I am thankful for the Beach"]

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
        return Beach.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell

        // Configure the cell...
        cell.Textlbl?.text = Beach[indexPath.row]
               

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
