//
//  Savage.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 21/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Savage: UITableViewController, GADInterstitialDelegate {
    
    var interstitial: GADInterstitial!

    
    var Savage = [
        
        "F*ck what others think, do what makes you happy.",
        "In the end, we only regret the chances we didn't take.",
        "I'm not picky. I have refined tastes.",
        "You cannot do epic things with an average attitude.",
        "Here's proof, that I'm the selfie queen.",
        "I don't need your approval. I've got mine.",
        "I'm like a speeding bullet that you cannot catch.",
        "I'm A queen, without a king.",
        "Don't make yourself easy to understand. Give them something to ponder.",
        "The more I get to know myself, the more People I hate.",
        "My attitude may be savage, but my heart's in the right place.",
        "Not worried about what other people may think. Coz,I",
        "know who lam, and I'm proud of what I see in me.",
        "I'm cute, and I know it.",
        "I may be cold as ice. But, in the right hands, I melt.",
        "I may be grace, but I won't hesitate to punch you in the face.",
        "know vodka may not be the answer, but it was worth the shot.",
        "can't stop staring at those ocean eyes a diamond mind",
        "when we all fall asleep, where do we go?",
        "what are you wondering?",
        "sittin' all alone, mouth full of gum, in the driveway",
        "where's my mind?",
        "thought that l'd feel better...",
        "don't say thank you or please, I do what",
        "I want when I'm wanting to.",
        "my soul? so cynical",
        "l'm that bad type",
        "l'm the bad guy, duh",
        "I'm only good at bein' bad",
        "tore my shirt to stop you bleedin' but nothin' ever stops you leavin'...",
        "I could lie, say I like it like that.",
        "call me friend, but keep me closer",
        "let me let you go",
        "I can't tell you how much I wish I did wanna stay",
        "If I swallow scrabble pieces and barf it out, that would still make a bette statement than what you speak.",
        "Let's just say Darwin would not have written about evolution had he met you first.",
        "I was feeling dumb, but then I thought I am at least smarter than you.",
        "Move, peasants.",
        "I use sass like an overly excited kid uses confetti.",
        "Making 'em stop and stare",
        "Where ya lookin'? I'm the view",
        "I like my chocolate how I like myself. Dark, bitter and too classy for you.",
        "I rolled my eyes up so hard I have become Mad Eye Moody",
        "I can remove most of your beauty from a wet wipe.",
        "You are so plastic, even China denied they made you.",
        "I know my personality is lit.",
        "You were better in my worst nightmares.",
        "I feel like my attitude has an attitude of itself.",
        "You know, hating me won't make your sad life any better.",
        "I'm simple to understand. Like quantum physics",
        "I'm all that you want, but cannot have.",
        "Don't try to study me; you're sure to fail!",
        "I'm not weird. I'm a limited edition.",
        "Badass with a good ass.",
        "Don't let part-time people stay in your life, for the whole time.",
        "My friend list is small because quality matters over quantity.",
        "Life may not be perfect, but my makeup is.",
        "You're the best version of yourself.",
        "Don't settle for being someone else, when you can be the best you.",
        "Behind my innocent face and pouty selfies, there's a wild streak hidden inside.",
        "You cannot afford my swag.",
        "No thanks, I don't need your approval to be the REAL me.",
        "I may be kind, but I ain't weak.",
        "All that matters is your own happiness. You weren't made to please everybody.",
        "tropical state of mind",
        "wanderlust and city dust",
        "kinda classy kinda hood",
        "cant forget that i'm golden flossy"

       
    ]
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
        return Savage.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell
        cell.Textlbl?.text = Savage[indexPath.row]

        // Configure the cell...

        return cell
    }
    
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
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
