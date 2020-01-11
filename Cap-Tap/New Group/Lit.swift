//
//  Lit.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 23/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class Lit: UITableViewController , GADInterstitialDelegate {
     var interstitial: GADInterstitial!
    
    
    
    
    var litCap = [
           "I am not picky. I just know what i want",
           "But my personality is lit !",
           "Wondering in which face you deserve my slap !",
           "Sunshine with a little hurricane",
           "You look like something i drew with my left hand !",
           "Stay a mystery , it's better that way !",
           "Make staring worth their while !",
           "Half savage, half sweetheart.",
           "I'm kind , not weak !",
           "Just winging it ! Eyeliner, life, and everything else !",
           " I 'Donut' care.",
           "You can ask Tommy , Hilfiger it out !",
           "Get you a Me. I am Lit !",
           "Braless is flawless",
           "Want to be in shape? Run like your mouth",
           "Soul over ego !",
           "Don't bother. You know you can't afford me.",
           "Just chilling !",
           " Savagery never goes out of style.",
           " Too glam to give a damn.",
           " Off guard but on point 🔪",
           " Water on my wrist like i live with the fishes💎",
           " Bad lil bih , good brain go to college ",
           " Wanderlustin’🌍 ",
           " Pretty gang sir, pretty gangsterrr ",
           " Classy , lil fake sassy 💰",
           " Drinking water & minding my business. Wyd ?",
           " Yo wifeyyyy 😛 ",
           " Same ol' attitude but I'm on some new shit 💘",
           " Sum like a trophy ",
           " Got my juice back 🥂 ",
           " Keeping it 1, double 0 ",
           " They mad cause I'm on 🔥 & they ain't even lit yet ",
           " It's fun applying pressure ☺️ ",
           " No nav. But I'll show you who's turn it is ",
           " I want it all 4 myself ",
           " Hopped out my feelings & hopped in my bag  🗣️ ",
           " I won't even peek @ you ",
           " You asked for the goat & they sent me mama 🤑 ",
           " Still going bad. ",
           " Dress for my mood, never the weather ❄️ " ,
           " She a good Girl But she Bad , so i am confused ",
           "Fly ASF , like a Dove On Me 🕊️ ",
           "Don't slip cause a N***a Might Push Up On It 😜 ",
           " I'm like Nike where the check At ☑️ ",
           " Salt Don't Kill Bad B*cths 🖤 ",
           " Be Careful w/Me 👅 Its a Threat, Not a Warning 🐩 ",
           " There Is no One Like You BBY 💋 ",
           " Don't Slip Onnna Drip 😜🌊💧 ",
           " I'm For KEEPS, she can't Complete ! 😳 ",
           " I'm Da Bad Bitch , all Da Bad Bitches FW😜 ",
           " Lil B*ts can't See me , They should be reading Braille 👓 ",
           " Street B* , But My Swagg Proper ! ",
           "Sauced Up On the walk Up ! ",
           "Go where I want to go , do what I want to do , Cuz I'm Grown ! 😜",
           " She makes it look easy 🥰 ",
           " No cap in my rap ",
           " No angel but you got a halo ",
           " Pull up to ya city , lookin every bit of pretty 😘 ",
           " Take a dose of me 🍷 ",
           " Heart full of love & mind full of goals ✨",
           " After the champagne 🍾 ",
           " Met a female dragon, had a 🔥 conversation",
           " Sexy and crazy that be my MO ",
           " Her Vibe is pretty 🦋 ",
           " 1k.",
           " Baby cakes 🍰 ",
           " I'd rather have loyalty than love 🖤 ",
           " Attitude on 99 n I'm not even 5'5 ",
           " W/ tha Vibesssss ",
           " I walked in dripping sauce ",
           " Life • love • the pursuit of the next beach trip",
           "I am the view 🌍 ",
           " Lay a good time on ya ",
           " Hi ( a city ), ur fave is back 🤪 ",
           " I can come to your city and make it my town",
           " C L A S S I A N A ♠️ ",
           " Lil foreign Vibe ",
           " Always catching the sun so miss me with the shade 🏝️⭐ ",
           " Here's a confirmation - I do not care ",
           " You're a type of guy , I'd make a sandwich for ",
           " In love with the sound of your silence ",
           " A combination of Alice and Hatter - a little lost and a little mad ",
           " Looks aren't everything, but I have them, just in case",
           " Being a badass with a perfect ass ",
           " Self - care is not selfish , it's important ",
           "Be more you, and less them ",
           " Stay away from the heater girl . Plastic melts",
           " Beauty and the beast ",
           " You couldn't handle me even if i came with instructions",
           " Life's short , make sure your heels aren't ",
           " Babe, you can't afford me",
           " Fri-nally ! ",
           "Your loss, babe ",
           " No Fake Shit ",
           " I am the destination ",
           " I'm not always Sarcastic. Sometimes, I'm sleeping ",
           " In love with the idea of ruining expectations "
       ]
    
    
       let backgroundImage = UIImage(#imageLiteral(resourceName: "bg2"))
    
    

    override func viewDidLoad() {
        
        let imageView = UIImageView(image: backgroundImage)
               self.tableView.backgroundView = imageView
        
    
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = imageView.bounds
        imageView.addSubview(blurView)
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
        let interstitial = GADInterstitial(adUnitID: "ca-app-pub-8978960658795160/2397092070")
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
        return litCap.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell
      //  cell.textLabel?.text = litCap[indexPath.row]
        
        cell.Textlbl.text = litCap[indexPath.row]

        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
           tableView.deselectRow(at: indexPath, animated: true)
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
           
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
