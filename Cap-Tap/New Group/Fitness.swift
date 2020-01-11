//
//  Fitness.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 29/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class Fitness: UITableViewController,GADInterstitialDelegate{
    
    var interstitial: GADInterstitial!
    
    var Fitness = [
    "Becomes what inspires you.",

    "I didn’t come this far to only come this far,",

    "Destroy what destroys you.",

    "The pain you feel today, will be the strength you feel tomorrow.",

    "Push yourself because no one else is going to do it for you.",

    "Don’t stop until you’re proud.",

    "Doubt kills more dreams than failure ever will.",

    "You’ve got 3 choices: Give in, Give up, or Give it all you’ve got.",

    "Many things aren’t equal, but everyone gets the same 24 hours.",

    "Always be a work in progress.",
    "Work out. Eat well. Be patient. Your body will reward you.",

    "Athletes eat and train, they don’t diet and exercise.",

    "The more I improve the less I care about what people think of me.",

    "I may look like a potato now, but one day I’ll turn into fries and you’ll all want me then.",

    "I feel personally victimized by this workout.",

    "Don’t downgrade your dream just to fit your reality. Upgrade your conviction to match your destiny.",

    "Stop making excuses, get out there and conquer.",

    "The fit is not a destination it is a way of life.",

    "It’s actually pretty simple. Either you do it, or you don’t.",

    "If you change the way you look at things, the things you look at change.",

    "The best way to predict the future is to create it.",

    "When nothing goes right…. go lift.",

    "We are what we repeatedly do. Excellence, then, is not an act, but a habit.",

    "Believe in yourself.",

    "Don’t forget to exercise your soul as much as your glutes.",

    "Your body can stand almost anything. It’s your mind that you have to convince.",

    "Strive for progress, not perfection.",

    "Find your fire.",

    "Make them stop and stare.",

    "Sore Today, Strong Tomorrow.",

    "Make sweat your best accessory.",

    "Wake up. Work out. Kick ass. Repeat.",

    "A change may be just around the corner.",

    "Workout. Eatwell. Be patient. Your body will reward you.",

    "Do something today that your future self will thank you for.",

    "You miss 100% of the shots you don’t take.",

    "We cannot start over. We can begin now and make a new ending.",

    "Cuddling, weights and cheat meal dates.",

    "Do it for the after photo.",

    "I ate a donut without sprinkles… diets are hard.",

    "In my defense, I was left unsupervised.",

    "It doesn’t matter how slow you go as long as you don’t stop.",

    "That awkward moment when you’re wearing Nike’s and you can’t do it.",

    "Do your squats, drink your water.",

    "I hear them talking behind my back.",

    "Sweat is just fat crying.",

    "The hardest lift of all is lifting your butt off the couch.",

    "Better sore than sorry.",

    "No matter how slow you go, you are still lapping everybody on the couch.",

    "Take care of your body. It’s the only place you have to live.",

    "Do not debate, just lift the weight.",

    "Don’t wish for it, workout for it.",

    "Six packs coming soon.",

    "I wear black to the gym because it’s like a funeral for my fat.",

    "Sweat is fat crying.",

    "If you want to be fit, just don’t quit.",

    "If you still look cute at the end of your workout, you didn’t try hard enough.",

    "Be the only person who thinks it’s possible.",

    "Strong, powerful, and beautiful.",

    "Rise and shine, its exercise time.",

    "If only sarcasm burned calories.",

    "The pain you feel today is the strength you feel tomorrow.",

    "Train because life’s a battle.",

    "Your speed doesn’t matter, forward is forward.",

    "You control how you feel and what your body feels like.",

    "Gym goals: to be able to crack walnuts in my arms, kill men between my thighs, and win prizes for my butt.",

    "A 1-hour workout is 4% of your day.",

    "Don’t tell people your plan, show them your results.",

    "You often feel tired, not because you have done too much, but because you haven’t done enough of what sparks a light in you.",

    "The pain you feel today is the strength you will feel tomorrow.",

    "So done with normal",

    "On good days, workout. On bad days, work out harder.",

    "We make time for what we truly want.",

    "Go where you feel the most alive.",

    "Fitness is more than a physical challenge, it’s a mental one.",

    "Quality is not an act, it’s a habit.",

    "You’re only one workout away from a good mood.",

    "It’s the will, not the skill.",

    "Fitness isn’t a seasonal hobby, it’s a lifestyle.",

    "30% Exercise, 70% Nutrition.",

    "It’s either the pain of discipline or the pain of regret.",

    "A year from now, we’ll see who was really working.",

    "Every day is a battle between real clothes and workout clothes.",

    "Legends are not created in their comfort zones.",


    "My heart says ice cream and chocolate, but my jeans shouts ‘Girl, eat salad’.",

    "Push your limits and imagine yourself three months from now.",

    "That’s is not sweat…it’s my fat crying for mercy.",

    "Burn your fat in hell.",

    "I am my motivation.",

    "Sore today, slender tomorrow.",

    "Beautiful girls lift weight too.",

    "Eta clean, Exercise and Repeat.",

    "Have high standards and low squats.",

    "Being cute doesn’t mean that you can’t be strong.",

    "Set goals, crush them and clap for yourself girls.",

    "Sweat is beautiful.",

    "Six months from now, you will thank yourself",

    "Go and get it!!!",

    "Sweat it out for the after selfie.",

    "Sweat + pain= Hottt!",

    "Feel like dying? Do 10 more squats.",

    "Will it be worth it? Absolutely Girl.",

    "Hustle hard girl to get the muscle."]
    
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
        return Fitness.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell
         cell.Textlbl?.text = Fitness[indexPath.row]

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
    
}

