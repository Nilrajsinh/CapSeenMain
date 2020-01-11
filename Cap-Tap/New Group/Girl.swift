//
//  Girl.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 21/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class Girl: UITableViewController, GADInterstitialDelegate {
    
     var interstitial: GADInterstitial!
    
    var Girl = [
        "stay wavy baby 🌪",
    "uptown girl💋",
    "My heels are higher than most people’s standards👠",
    "Too glam to give a damn",
    "Messy bun and having fun",
    "pathetic but aesthetic",
    "I mean i'd wish u the best but ya already had it",
    "we didn't realize we were making memories, we just knew we vwere having fun🌈",
    "hakunamata",
    "Back where I belong, 💫",
    "alone together",
    "XOXOL💄",
    "blessed with the best",
    "Partners in crime😏",
    "Nobody really likes us, but us",
    "We go together like coffee & donuts",
    "You can do epic shit with basic people",
    "You can't sit with us💅😋",
    "I only roll with goodness",
    "good vibes 💜",
    "sweeter than honey",
    "moonlight",
    "positive",
    "she's proof that you can walk through hell and still be an angel",
    "be so happy you forget how to be sad:)",
    "life is the best party i've ever been to (:",
    "you are my sunshine☀",
    "take the rise or lose the chance",
    "fingers crossed🤞",
    "peace✌",
    "bruh🤟",
    "salt in the air, sand in my hair🌊",
    "this heart of mine was made to travel the world 🌏",
    "don't be a princesS be a 👑",
    "too blessed to be sister stressed",
    " I got it from my mama",
    "A great girl is classy not trashy",
    "Girls are changing the world",
    "Who run the world? GIRLS.",
    "Just like my eyeliner, I always wing it",
   "I'm not one in a million, I'm one in 7billion",
    "Leave a little sparkle everywhere you go 44 44",
    " 'm wild and free",
    "The only person I dress to impress is me",
    "Sand in my toes and saltwater in my curls.",
    "Fond of colors, morning air, nature and a good cup of tea.",
    "This seat is taken!",
    "I put the hot in psychotic.",
    "Proud supporter of messy hair and sweatpants.",
    "Pour yourself a drink, put on some lipstick, and pull yourself together.",
    "Naturally and artificially flavored.",
    "Mermaids don't do homework.",
    "Life is dumb, and I want to sleep.",
    "A sky full of stars but why you are staring at me?",
"Im not telling you to follow me, but my heart insists.",
    "Ambition on fleek!",
    "I speak fluent sarcasm!",
    "Let them say it and be busy slaying it.",
    "Do you see that blue follow button? l'd tap that!",
    "I speak my mind, and I never mind what I speak",
    "Being Alive is being Offline!",
    "Be like that wind that can turn into a tornado",
    "I can share my boyfriend but not my M.A.C Lipstick💄",
    "Give a boys reason to stare",
    "wake up to make up",
    "she's not on my level",
    "lost your grip on this queen",
    "keep your eyes on the stars & your feet on the ground",
    "boss up like this",
    "gotta stick together",
    "a galaxy in her eyes but a universe one her mind",
    "looked into your eyes and found my favorite color",
    "you got me shot down",
    "my girl 4ever :)",
    "my pretty sidekick😘",
    "on to better things💫",
    "what are Saturdays for?",
    "hoes b4 bros",
    "fridays are for the gals",
    "Was having a bit of a Regina George moment right there",
    "makes me wanna give you my heart",
    "Cuz you're the best mistake I've ever made",
    "Nothing lasts forever bby",
    "Breathtaking",
    "Cause imma ride or die wheather you fall or fly",
    "too big, gotta map this",
    "f ck. all i need is U❤",
    "A girl doesn't need anyone who doesn't need her",
    "Listen, Smile and Agree. Then. go ahead and do whatever the fuck you were gonna do anyway",
    "yourself together",

    "Pour yourself a drink, put on some lipstick and pull",
    "You don't deserve my tears. Guess, that's why there",
    " A woman is like a tea bag. You don't know how strong she is until she is dropped in hot water"

       ]

    
    let backgroundImage = UIImage(#imageLiteral(resourceName: "bg2"))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let imageView = UIImageView(image: backgroundImage)
                   self.tableView.backgroundView = imageView
        

        interstitial = GADInterstitial(adUnitID: "ca-app-pub-8978960658795160/2397092070")
        let request = GADRequest()
          interstitial.load(request)
        interstitial = createAndLoadInterstitial()
        interstitial.delegate = self
        
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
        return Girl.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell
        cell.Textlbl?.text = Girl[indexPath.row]

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
