//
//  Life.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 29/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Life: UITableViewController , GADInterstitialDelegate {
    var interstitial: GADInterstitial!
    
    
    var Life = [
    "Live life in such a way that you focus on the most positive aspects.",

    "Life is all about finding your way.",

    "Nothing is impossible as long as you dedicate your time towards it.",

    "Change your life by bringing a change in the way you think.",

    "Always look on the bright side.",

    "Find your balance and keep moving in life,",
    "Believe in yourself and not in what others tell you about yourself.",

    "Beauty begins the moment you start accepting the way you are.",

    "Life is short, so smile while you can.",

    "Love your life, an obstacle is more often a stepping stone.",

    "Dream as much as you can and you’ll eventually achieve it.",

    "Life changes only if you allow it to.",

   " If you feel like quitting, remember why you started in the first place.",

   " Life always gives you the opportunity to step back and evaluate your condition.",

   " Don’t give your life away to other people who wouldn’t value it as much as you do.",

   " You’re never old enough to start dreaming again.",

   " The pain is definitely a part of life, lucky are those who make it through",

    "Start doing. The number of things that could go wrong never decreases.",

   " Don’t worry if your path is different. Being different is never wrong.",

    "No one can dim your light except you.",

    "Never give up on something just because it’s hard to achieve it. It may be difficult, but it’s worth it.",

    "Try to look at the painful moments in your life and you will realize how much strength they gave you.",

    "Embrace the pain you get and learn all you can from it.",

    "Work hard enough so that you never have to introduce yourself to other people/",

    "A Positive mindset invites a positive life.",

    "Don’t be afraid to break free from the walls, which cage you.",

    "The little things you enjoy in life are often the big things which came disguised.",

    "Life isn’t about waiting for a difficult time to pass. It’s about embracing it.",

    "Be a person with a positive attitude and class.",

   " Little things in life are what make it stand out.",

    "Life is never going to be easy. It’s a roller coaster which keeps going up.",

   " Don’t let the bad moments steal your happiness.",

    "Don’t be afraid to break the rules. Life is short.",
    "Cherish the people and the things which make you laugh when you don’t feel like smiling.",

    "Fearing change is the worst thing you can do.",

    "Have you ever taken a step back to appreciate how much better your life is, just because you met a certain person?",

    "Start investing your time in people who do the same for you.",

   " Be sure to sprinkle kindness like confetti.",

   " Don’t let anyone decide that you’re not worth the things you’ve achieved.",

    "Be fierce, not everyone will be nice to you.",

   " Storms don’t last forever.",

   " A negative mind will never let you have a positive life.",

    "Life is not a race so don’t worry about competition. Be the best version of yourself and you’ll find everyone else falling behind.",

    "I just don’t want to look back in life and think I could’ve eaten an extra piece of cake.",

   " The goal of your life should be to create something that stays even after you die.",

    "Start committing to yourself and get better.",

    "Stop expecting too much from people, and start expecting from yourself. This way you’ll remove their power to hurt your feelings, completely.",

    "Remember to live on the days when you’re busy surviving.",

   " For once, I’m going to do what I want to and start being happy about it.",

    "Wait for someone who offers you an entire galaxy when all you asked for was a mere planet.",

    "Don’t just exist. Start living.",

    "Never forget how far you’ve come. Every step you take is an accomplishment in itself.",

    "I wish life was as easy as pressing a button on the remote which changes the channel. But it’s not.",

   " My goal in life is to make sure that everything in my life is beautiful.",

    "Life is about finding someone who appreciates your existence.",

   " Don’t get to the stage where love seems to be a mockery.",
    "Life is what happens when you’re busy making other plans. – John Lennon.",

   " Get busy living or get busy dying. – Stephen King.",

   " Healing is not a destination, it’s a process. – Ruby Dhal.",

    "20 years down the line, you’ll be more disappointed by the things you didn’t do than the ones you did do. – Mark Twain.",

   " It doesn’t matter how many times you fall, it matters how many times you get back up. – Lilly Singh.",

   " Don’t kill yourself. Kill that part of you that you don’t like. – Shane Dawson.",
   " Life is too short to focus on the things you hate. – Pewdiepie.",

   " Are you living your life waiting to wake up? – Bridgett Devoue.",
   " When they try and pick your petals, give them thorns. – Bridgett Devoue.",

    "It’s really strange how your nothings meant the most. – Pyrokardia.",

    "You will have everything in life if you will sacrifice everything else for it. – J.M. Barrie.",

    " Kill painful memories by creating better ones. – R.H. Sin."]
    
    
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

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Life.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell
        cell.Textlbl?.text = Life[indexPath.row]
            share = Life[indexPath.row]

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

    
    @IBAction func ShareBtn(_ sender: UIButton){

        
          let activityvc = UIActivityViewController(activityItems: [share], applicationActivities: nil)
            activityvc.popoverPresentationController?.sourceView = self.view
            present(activityvc, animated: true, completion: nil)
        }
    
     var share = ""
    
}
