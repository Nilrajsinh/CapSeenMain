//
//  BIo.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 21/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class BIo: UITableViewController, GADInterstitialDelegate {
    
     var interstitial: GADInterstitial!
    
    var Bio = [
        
        "Living life on my own terms",
        "I don't care what people think of me",
        "this is me in rawest form",
        "I 'd rather be hated for who I am than loved for who I am not",
        "Living my dreams but I get closer everyday",
        "married old man telling wild stories",
        "Risk taker. Adventurer. Globetrotter",
        "I might not be where I want to be yet",
        "One day, I hope to be a happily from his wild youth",
        "I got to where I am today by being mine",
        "I was born to do exactly what I'm doing today",
        "Don't like me? Don't care",
        "I'm out here hustlin' to claim what's mine",
        "Enjoying every second of my life",
        "follow along and see for yourself",
        "When the pain passes, you eventually see how much good came out of a bad situation",
        "Love and Peace",
        "Mentally on the beach",
        "If you want the tea, follow me",
        "Dreaming bigger than my imagination can handle",
        "Starting over",
        "Just going with the flow",
         "I'm sparkling like my water",
        "I don't come with instructions but my captions are the next best thing",
        "Not like the rest of them",
        "Oh, you One of a kind",
        "The best things in life are really expensive. You can have me for $7 billion",
         "Aloha TTTTTT",
        "Hi. Hello. Hola. Ola. Bonjour. Ciao",
        "Guten Tag. Namaste. Salaam",
        "Life's short, eat the cake",
        "Adding a little sparkle to your day",
        "I regret nothing you see in this feed",
        "My greatest fear isn't starting. My greatest fear is not making it to the top",
        "Leaving a bit of sparkle every where l go",
        "I believe in making the impossible possible because there's no fun in giving up",
        "Turned my dreams into my vision and",
        "Smart. Strong. Silly. Straight up class",
        "I'm not perfect but stories are always",
        "My standards are high... just like my",
        
        "Who runs the world? ME.",
        "Happiness never goes out of style",
        "I'm a woman with ambition and a OOTS",
        "heart of gold",
        "I shine from within so no one can dim my light",
        "when the sun goes down, i glow up",
        "you're alive but are you living?",
        "i hold back sometimes i won't",
        "why play tag when i've been it",
        " just another lost angel",
        "aspire to inspire",
        "ain't no other like me",
        "tables turn, bridges burn, you live and learn",
        "drippin in finesse",
        "i can be your bad habit",
        "that's my numba 1",
        "ma girls",
        "a vibe no one else can replace",
        "silent but deadly,",
        "should coulda woulda",
        "all the feels",
        "my shorty a goodie",
        "ain't tryna lose my mind",
        "they would do it just like we do if they could",
        " Queen turned 15",
        " long time no seeY",
        "take the risk or lose the chance",
        "last night was a blur",
        " hope you shine lil baby",
        "some changes are worth making",
        "stop looking for love",
        "wild wurld",
        "he truth hurts but secrets kill,",
        "my flowers grew back as thorns,",
        "suga suga how'd u get so fly",
        "Dreams Goals",
        " If 'love is in the air' why is the air so polluted?",
        "It took me years to look like this",
        "Currently saying yes to new adventures",
        " 'm hurt but I still smile. That's my life.",
        "Midnight snacker",
        "Everyone else was taken so this is me",
        "Recovering cake addict",
        " Imake money in my sleep",
        "People call me Sara but you can call me tonight",
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
        return Bio.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = Bio[indexPath.row]

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let cell = tableView.cellForRow(at: indexPath)
        UIPasteboard.general.string = cell?.textLabel?.text
        
        if interstitial.isReady {
           interstitial.present(fromRootViewController: self)
         }
        
        
        
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
