//
//  attitude.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 21/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class attitude: UITableViewController, GADInterstitialDelegate {
    
     var interstitial: GADInterstitial!
    
    
    var attidu = [ "Best Attitude Quotes For Girls",
        "Grace always conquers!",
        "I run on coffee, sarcasm, and lipstick.",
        "As if i am on fire from within, the moon lives in the lining of my skin.",
        "Life led me down a path, I didn't foresee, yet I winded upright, where I was meant to be.",
        "Sugar and spice, and everything nice!",
        "Girly and flirty to edgy and chic.",
        "Girl with big hair and full of secrets.",
        "Grow up, glow up, blow up.",
        "Be fearlessly authentic.",
        "Beautiful individual tat creates hell.",
        "She is like that story in a book that makes your eyes to dream.",
        "Who is that sexy thing i see you there? That is me, standing in the mirror!",
        "She is obsessed with the world the imagines.",
        "I am too lil butter on too much bread. I am too many thoughts in too lil head.",
        "Once a while someone amazing comes along! And here i am.",
        "you are on a different road, I am in a milky way, you want me down on earth, but i up in space.",
        "She be little but she is fierce.",
        "No matter how she looks, if she's confident, she's sexy from the rest of the world.",
        "Some girls are born with glitter and shine in their face.",
        "Girls who are self-dependent are strong and beautiful. That's enough.",
        "Hey girls, Be brave and be with you. It's all that matters.",
        "No beauty ever gets to shines brighter than their good heart.",
        "Girls - Be fearlessly amazing.",
        "Pink is not just a color but an emotion.",
        "Embrace the beauty of a girl.",
        "Single girls are the best humans as they can do what they want in their life.",
        "You're the king and so i am you queen.",
        "Girls who are prettiest are the one who is happy.",
        "Hey you, I'm not short, I'm cute. Now bye.",
        "Girls feel their vibes and they're awesome.",
        "Once a girl said, I wanna spend the rest of my life laughing and enjoying my own mess.",
        "Cool Attitude Captions",
        "I am a bit classy whch reflects my attitude and my personality.",
        "Bitch, like me for who i am, I will not be changing. Take me or leave me. It's fucking simple.",
        "I don't care what you think about me unless you think I'm freaking awesome. So in that case, carry on my friend.",
        "Backbitching - Don't talk what people said about me. Tell me why they were cozy saying to you.",
        "Become an ODD in the crowd to become number ONE.",
        "My Attitude Forecast: Moody AF.",
        "I have reached a point in my life where i don't need to impress anyone. I don't want to explain myself.",
        "Take me or watch me as i leave.",
        "Be yourself, who else has been quaified for this?",
        "Smile and it will scare your enemy.",
        "I am not weird babe; I just fall outside the crowd of this world.",
        "If you think me as a BAD person, trust me, bitch, I am worst.",
        "Oh Shit, Global warming made me lot.",
        "What others say about me is none of my busuness.",
        "Love me or not I am still gonna shine.",
        "Attitude Captions for Instagram",
        "I'd rather be someone's Sunday morning, not Saturday night.",
        "Be the EXTRA in extraordinary.",
        "I've got hustle and heart.",
        "I don't believe in SOMEDAY, I believe in TODAY.",
        "When life gives me lemons, I make lemonade then sell it.",
        "My life my rules.",
        "I'm not lucky, I am talented.",
        "You can beat me down but i'll justjump back up.",
        "I may be down to earth but i'm still above you.",
        "I'm confident, your opinion of me won't change that."
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
        return attidu.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! AttitudeCell
        
        cell.Textlbl?.text = attidu[indexPath.row] 

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if interstitial.isReady {
           interstitial.present(fromRootViewController: self)
         }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let cell = tableView.cellForRow(at: indexPath)
        UIPasteboard.general.string = cell?.textLabel?.text
        
        
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
