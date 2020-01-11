//
//  Inspirational.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 29/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Inspirational: UITableViewController , GADInterstitialDelegate{
    var interstitial: GADInterstitial!
    
    var insp = [

    "Be a goal digger, not a gold digger.",

    "Every next level of your life will demand a different you.",

    "The past is in your head. The future is in your hand.",

    "I don’t follow the crowd, I walk through them.",

    "It’s kind of fun to do the impossible.",

    "The only journey is the one within.",

    "All things are possible if you believe.",

    "What you hide controls you.",

    "It’s okay to outgrow those who prevent you from growing.",

    "What’s real will resonate.",

    "Comfort is not the same thing as commitment.",

    "Fall down seven times, stand up eight.",

    "Unconditional self-love can change your life.",

    "The advice you give is often the advice you need to take.",

    "Other people are not the medicine.",

    "If there’s no struggle, there is no progress.",

    "Not all stars belong in the sky.",

    "Be a self-starter.",

    "Motivation is what gets you started. Habit is what keeps you going.",

    "Do not let what you cannot do interfere with what you can do.",

    "Fear makes the wolf bigger than he is.",

    "Whatever you are, be a good one.",

    "Today could be the day everything changes.",

    "Judge a man by his questions rather than his answers.",

    "Just see what will happen if you don’t give up.",

    "Anything that costs you your peace is too expensive.",

    "Never love anybody who treats you like you’re ordinary.",

    "Turn your wounds to wisdom.",

    "I think people who ridicule positivity think positivity is easy.",

    "What you tend to is what will grow.",

    "What brings the most peace should get the most time.",

    "There is no greater agony than having an untold story inside you.",

    "If you see something beautiful, say something.",

    "Discard everything that does not spark joy.",

    "Don’t allow your wounds to transform you into something you are not.",

    "What are you willing to give up to become who you really need to be?",

    "Sometimes the right path is not the easiest one.",

    "The less I fight with my fear, the less it fights back.",

    "Only in the darkness, you can see the stars.",

    "Everyone is recovering from something.",

    "What kind of person you’re when you’re alone?",

    "The most important relationship you will ever have is with yourself.",

    "Give yourself something to look forward to that isn’t a person.",

    "Forgiveness is a kind of magic.",

    "If you’re lucky enough to be different. Don’t ever change.",

    "The fears you don’t face become your limits.",

    "Your decision reveals your priorities.",

    "No one ever drowned in sweat.",

    "Learn to fight alone.",

    "At the point when motivation does not come to me, I go most of the way to meet it.",

    "Be a warrior, not a worrier.",

    "Die with memories, not dreams.",

    "Don’t create limitations.",

    "Go wild, for a while.",

    "If the plan doesn’t work, change the plan but never the goal.",

    "The game is won in the mind.",

    "If you can’t stop the waves, learn to surf.",

    "First, they ignore you, then they ridicule you, then they fight you, and then you win.",


    "Plant your hope with good seeds.",

    "You are allowed to be both, a masterpiece, and a work in progress, simultaneously.",

    "The past cannot be changed. The future is yet in your hands.",

    "Believe in yourself! Have faith in your abilities! Without a humble but reasonable confidence in your own powers, you cannot be successful or happy.",

    "Keep your eyes on the stars and your feet on the ground.",

    "Don’t watch the clock. Do what it does. Keep going.",

    "It always seems impossible, until it’s done.",

    "Don’t stop when you’re tired. Stop when you are done.",

    "Dream big and dare to fail.",

    "The greatest pleasure in life is doing what people say you cannot do.",

    "Don’t limit your challenges. Challenge your limits.",

    "The best view comes after the hardest climb.",

    "Life isn’t about finding yourself. Life is about creating yourself.",

    "You’ll never change your life until you change something you do daily.",

    "When you feel like quitting, think about why you started.",

    "Great things never come from the comfort zone.",

    "Even the darkest night will end and the sun will rise.",

    "Mindset is what separates the best from the rest.",

    "A river cuts through a rock not because of its power but its persistence.",

    "All roads that lead to success have to pass through “Hard Work Boulevard” at some point.",


    "The only person who can define your limits is You. But, even then, it’s not necessary that you have to take yourself seriously. #goahead",

    "When you grow, some people have to go. #LetGo",

    "Your gut feeling is your guardian angel.",

    "Sometimes the best adventure is a great conversation.",

    "Something special is coming your way. Are you ready?",

    "Everyone has a chapter that cannot be read aloud.",

    "Don’t trust all that you see. Even salt masquerades as sugar.",

    "Beauty may attract the eye, but it’s personality that wins the heart.",

    "Do what you love and love what you do.",

    "People told me I’d never get far. It looks like they were right, I got even further.",

    "There’s never a better day to start than today. #StartToday.",

    "I don’t have enough time is no excuse. You have exactly the same number of hours as given to Albert Einstein, Leonardo Da Vinci, and Michelangelo. #StartToday",

    "Day by day nothing changes, but when you look back, it’s all changed.",

    "Remember today is the first day of the rest of your life. #StartToday",

    "Nobody has the power to go back and create a new beginning. But everyone has the power to start now to make a fresh ending.",

    "When in doubt, always choose change.",

    "The only thing that’s constant in the world is change.",

    "Wherever you go, go with all your heart.",

    "Eighty percent of your success depends on getting up and showing up.",

    "An obstacle is nothing but a stepping stone in disguise.",

    "Turn your fears into curiosity.",

    "In life, you regret nothing but the chances that you didn’t take. Go ahead, give it a try. #YOLO",

    "Learn from yesterday, live for today, hope for tomorrow.",

    "You learn the best when you teach others.",

    "If not me, who? If not now, When?",

    "Do something that scares you – Eleanor Roosevelt",

    "Small men, dream small, while big men dream big. #dreambig",

    "Hope for the best, but prepare for the worst.",

    "A boat may be safest in the harbor, but it isn’t what boats are made for.",

    "If you haven’t tried something that makes your heart go crazy, then you haven’t lived at all."]

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
       }    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return insp.count
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
         tableView.deselectRow(at: indexPath, animated: true)
        
         if interstitial.isReady {
                  interstitial.present(fromRootViewController: self)
                }
          
         
     }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell

        cell.Textlbl?.text = insp[indexPath.row]
               
        
        // Configure the cell...

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
