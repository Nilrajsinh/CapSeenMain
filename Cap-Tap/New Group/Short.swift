//
//  Short.swift
//  Cap-Tap
//
//  Created by Nilrajsinh Vaghela on 20/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class Short: UITableViewController, GADInterstitialDelegate {
    
      var interstitial: GADInterstitial!
    
    
    var short = [
         "Screw perfect",

          "Frisky Friday",

         "Throwback Thursday",

         "Sunday Funday",

          "Hakuna Matata",

          "Perfectly imperfect",

          "Be fierce.",

          "Inner Peace",

          "Stay tuned",

          "Fearlessly Authentic",

          "Beautiful Disaster",

          "Pretty Awesome",
         "Loosen up ",

        "Hopelessly Romantic ",

        "God’s Masterpiece",

          "Mind Matters.",

         "Wild things.",

         "Go Green",

         "Under Construction.",

          "Embrace Elegance",

          "Never Settle",

          "Rock on",

        "Warning Sign",
        "Feeling groovy",

        "Happy trails.",

        "Stay positive",

        "Be spontaneous",

        "Risk taker",

        "No filter",

        "Dream big",
        " Lovely day ",
        " Felt cute ",
        " Your loss ",
        " Blue skies ",
        " Day dreaming ",
        " Living life ",
        " Oh hi ",
        " Worry less ",
        " Mixed feelings ",
        " Be kind ",
        " Self loving ",
        " Try again ",
        " Yee haw ",
        " Let go ",
        " Endless fun ",
        " Sunny Vibes ",
        " One day ",
        " Simply happy ",
        " Look up ",
        " Feelin' good ",
        " Oh well ",
        " Golden days ",
        " Moon child  🌙",
        " Far off 🛸",
        " Sunny hunny ",
        " Vanilla sky 🌌",
        " Get wild 🤪",
        " Je t'aime ",
        " Rare breed 💋 ",

        "Aquaholic",

        "Wanderlust",

        "Savage",

        "Bliss",

        "Vibes",

        "Smile",

        "Frozen",

        "Serendipity",

        "Awesomeness",

        "Unwind",

        "Therapy",

        "Inspired",

        "Fearless ",

        " Nostalgic ",

        " Believe ",

        "Classic ",

        "Ignited",

        "XOXO ",

        "Escape ",

        "Persevere",

        "Screwed",

        "Independent",

        "Flawsome",

        "Peace",

        "Stunning",

        "Soulfulness",

        "Contentment",

        "Blissful",

        "Candid",

        "Epic",
      
        "Thoughts become things.",

        "Hot Chocolate weather",

        "Catch a glimpse",

        "Sip, sip, hooray.",

        "Escape the ordinary",

        "Captions are overrated",

        "Quality over quantity.",

        "Selfie. Ever.",

        "It’s sexy time.",

        "A human. Being.",

        "Make it happen.",

        "I like foodies.",
        "Find your wild!",

        "Dream without fear.",

        "Love without limits.",

        "Average is boring.",

        "It’s wine o’clock!",

        "Exhale the bullshit!",

        "You got this.",

        "Time for changes.",

        "Genius is patience",

        "Miles of smiles",

        "Seize the day",

        "Happiness is homemade.",

        "Be the exception.",

        "Friends are treasures.",

        "Take the risk",

        "Prove them wrong",

        "She’s not afraid",

        "Gravitate towards happiness",


        "Live a good story",

        "Tropical state of mind.",

        "You don’t know me.",

        "High tides, good vibes.",

        "Sunshine on my mind.",

        "Monday, No Fun Day!",

        "Life happens, coffee helps",

        "I say why not?",

        "Worry less smile more.",

        "Gonna go crazy tonight",

        "I’m your worst nightmare.",

        "50% Savage. 50% Sweetness.",

        "Self Love isn’t selfish!",

        "Own less, live more!",

        "You are your choices",

        "Catch flights, not feelings.",

        "Eyes are never quiet",

        "Be anything but predictable.",

        "I decide my vibe.",

        "Smile, it confuses people.",

        "Live in the moment",

        "Collect moments, not things.",

        "Music is my sanity",

        "Perfect is an illusion.",

        "Don’t forget to play.",

        "Dare to be different.",

        "Stop wishing. Start doing.",

        "When in doubt, travel.",

        "Liberate your inner awesome.",

        "Different doesn’t mean wrong.",


        "You make my heart smile.",

        "Sea you in the morning",

        "The best is yet to come",

        "Life is better with friends!",

        "Your vibe attracts your tribe",

        "All we have is NOW.",

        "Life is better in bikini.",

        "We rise by lifting others.",

        "Sunshine with a little hurricane.",

        "Short, sassy, cute and classy.",

        "Help me please, I’m bored.",

        "Weekend, please don’t leave me.",

        "Always take the scenic route.",

        "I am an Instagram Caption!",

        "I’m not lazy, just relaxed.",

        "Back and better than ever.",

        "I don’t lose, I learn.",

        "Eat right, exercise, die anyway.",

        "My favorite animal is steak.",

        "This is my thug life.",

        "Make them stop and stare.",

        "All limitations are self-imposed.",

        "Make each day your masterpiece.",

        "Chances favor the prepared mind.",

        "Choose the world you see.",

        "Don’t fight forces. Use them.",

        "Creativity is intelligence having fun.",

        "Go forth and be fierce",

        "Nothing worth having comes easy.",

        "Simple is the new black.",

        "I was born to stand out.",

        "Judge me when you are perfect.",

        "You can call me queen bee.",

        "Take a ride on my energy.",

        "If it’s true love, it’s lasting.",

        "The one who didn’t get away!",

        "Black and white colors our memories.",

        "I am worth losing sleep over",

        "Be you. The world will adjust.",

        "Do it with all your heart.",

        "Be a voice, not an echo",

        "The tide is here to stay.",

        "Friday, my second favourite F word.",

        "Be young, be dope, be proud.",

        "Be good, do good, look good.",

        "I play LIFE like a pro!",

        "Calories don’t count on the weekend.",

        "Life is better when you’re laughing.",

        "Confidence level: Selfie with no filter.",

        "For you, I’d steal the stars.",

        "Grow through what you go through.",

        "It’s the little things in life.",

        "Don’t wait for opportunities. Create them.",

        "Dreams don’t work unless you do.",

        "Live like there is no tomorrow.",

        "Never be sorry for being you.",

        "When nothing goes right, go left.",

        "Sometimes, we need a little magic.",

        "You need light to see color."
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animateTable()
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

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return short.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell
        cell.Textlbl?.text = short[indexPath.row]
       share = short[indexPath.row]
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        
         tableView.deselectRow(at: indexPath, animated: true)
               
             
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
     var share = ""
    
    @IBAction func ShareBtn(_ sender: UIButton){

        
          let activityvc = UIActivityViewController(activityItems: [share], applicationActivities: nil)
            activityvc.popoverPresentationController?.sourceView = self.view
            present(activityvc, animated: true, completion: nil)
        }
    
    
}
