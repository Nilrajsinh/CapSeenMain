//
//  Couple.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 29/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Couple: UITableViewController , GADInterstitialDelegate{
    
    var interstitial: GADInterstitial!
    
    var Coupl = ["My moon and stars",

    "It’s the look in your eyes that keeps me going",

    "You are the road to my destiny",

    "Just the bunch of precious people making me forget about my phone",

    "Can heaven look better than this?",

    "Something in you lights up heaven in me",

    "U make me “oh I love myself” kind of happy!",

    "Walk with me through the garden of dreams!",

    "Being together is not an option its destiny!",

    "The most beautiful memory to last till eternity",

    "There is something about the way you call my name",

    "It’s all about wanting to fall asleep in your arms every night",

    "Poison and antidote… all at once!",

    "Trying to feel how forever feels",

    "I may not be your home but I can shelter you by my love!",

    "It’s the wrong person holding you If you can’t find peace in their arms",

    "Memories may fade… but the love always stays",

    "There is a heaven and there is a hell and then there is YOU!",

    "Its best to stumble on someone that can lit an undying fire in you",

    "You make me feel like I am living a dream",

    "They made it look easy, that thing called love!",

    "Believe in love",

    "Best things in life are better when you don’t expect them",

    "Take action, and it will happen!",

    "I knew I was Lucky and screwed when I saw you!",

    "It’s all about an instant connection",

    "Love like you are not promised tomorrow!",

    "Forgive me for every unappreciated second",

    "You are the cure and you are the pain!",

    "I could happily Dance through the streets of hell and heaven holding your hand",

    "Never knew that it could mean so much",

    "The ones who love you, never let you beg for their presence",

    "Find someone who supports your dreams and nourish your growth",

    "You bring me peace after travelling the world",

    "Love has the power to cover up pains!",

    "You are my happy world!",

    "The shine in me is a reflection of you",

    "Stop thinking about how the love should me. Let it grow and see where it takes you!",

    "Conversations make the best affairs",

    "My heaven smells like you!",

    "We all are just the needs getting fulfilled",

    "U cannot beg to be loved!",

    "There is always a message in the way you are being treated",

    "Love the one who is proud to have you",

    "I want to make you the happiest you have ever been",

    "I knew I wanted you just when I saw you laughing",

    "Choose wisely whom you exchange your energy with",

    "You are the one I wouldn’t mind losing my sleep forever",

    "What’s love? Its everything when I look at you",

    "Meet me at midnight and I will take you to the forest of my dreams",

    "You make my life smell like roses",

    "I look at you and I feel like home",

    "The best thing you did for me is that you never gave up!",

    "Fall in love with someone who will never let you sleep wondering what went wrong!",

    "If love is somewhere to be found it has to be your eyes.",

    "Of all the things I love, YOU top the list baby.",

    "If I could stop thinking about you I would but I couldn’t.",

    "Love is when you speak to me not in words but in your silence.",

    "If love is ever measured in distance you would be as close to me as I am to myself.",

    "Couples talk about finding a perfect partner, luckily only I’m right.",

    "Your presence is same as what oxygen is to human body; because without you I die.",

    "Every time I close my eyes IU don’t see you, instead I see us together and happy.",

    "Love me like it’s the last day of being together.",

    "You and I make a perfect couple.",

    "Stealing is a crime but I have stolen your heart and now its mine.",

    "Your name looks good perfect beside mine with a heart in between.",

    "You, me and movies with a cuddle makes a perfect date night.",

    "Being in relationship doesn’t make you a couple, being in love does.",

    "I never miss you because your presence is always there in my heart.",

    "If love is addiction then you are my drug.",

    "Couple goals: a day that starts together and ends together.",

    "Couple goals: you, me and our complete life.",

    "If love is a drug then I am addicted to you baby.",

    "Then they both lived happily ever after.",

    "I’m planning on changing my surname, would you mind if I take yours.",

    "Best part about being with you is that I don’t have to chase your love baby.",

    "If I have to give you any cute names then it would be my surname.",

    "After giving you all my love another thing that I want to gives to you is my surname.",

    "You are stuck in my mind as magnet to iron.",

    "I don’t want t live forever if that forever doesn’t include you.",

    "Your smile makes me love you even more.",

    "When I look into your eyes all I see is true love for me.",

    "Being with you is the best thing that has ever happened with me.",

    "With you beside me I’m invincible my love.",

    "Let’s build our perfect world, you me and lots of love.",

    "I will love you even when I don’t love myself.",

    "My heart has space only for you and no one else.",

    "Every day I want to wake up next to you.",

    "Every time you smile I still skip a beat in my heart.",

    "Even if I try I couldn’t hate you, you are that level of cute.",

    "Best friends make the best couple, though you should know this.",

    "If I have to choose between love and money, would you love me with no money?",

    "Be aware of other girls they want to steal you from me.",

    "Be aware he is my boyfriend.",

    "Parental advisory: explicit boyfriend.",

    "Parental advisory: explicit girlfriend.",

    "Hold my hand and promise to never leave it, my love.",

    "When we stay together all your hoodies and over size shirts are mine ￼",

    "Every time I breathe, I breathe you name within.",

    "If you ever have a bad day tell me I will wrap you in my arms.",

    "On a bad day all in I need is my coffee and cuddle from you.",

    "I all in love with your beauty every time I see you.",

    "You know what look good on your lips, my name.",

    "If you ever fall my love, I will catch you.",

    "You are the destination to my journey of life.",

    "Let us travel the world you and me as a couple.",

    "If I have to do only one thing in my life, it would be to love you.",

    "I will love you even when your smile will turn into wrinkles.",

    "We will be together even when we turn old.",

    "I want to turn old with you.",

    "Let us make memories of love together.",

    "My search for love stops at you.",

    "You are exactly as I have seen in my dreams.",

    "You are sweeter than the chocolates.",

    "Would you share a life with me?",

    "If couples are made in heaven than you and me are made for each other.",

    "I will never hang up on you.",

    "Loving you was never an option it is always a priority.",

    "With every passing day my love for you keeps increasing.",

    "You are an ep CVitome of love for me.",

    "I will love you more in dark and gloomy days.",

    "The best part of loving you is I get more than what I give to you.",

    "We are tangled with each other like a never opening knot.",

    "I love you to the level that I will sit with you to match a cricket match.",

    "I love you to the level where I will sit with you to watch a football match.",

    "Take me to the moons far from the eyes of the world, a place where only love exists.",

    "The only thing that I want from you is your love and trust.",

    "I pity those who want to feel your love but you love me.",

    "I was a wanderer with you as my destination; my love.",

    "I promise to love you from my heart and soul."]
    
    
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
        return Coupl.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell

        cell.Textlbl?.text = Coupl[indexPath.row]
               share = Coupl[indexPath.row]
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

    
    @IBAction func ShareBtn(_ sender: UIButton){

        
          let activityvc = UIActivityViewController(activityItems: [share], applicationActivities: nil)
            activityvc.popoverPresentationController?.sourceView = self.view
            present(activityvc, animated: true, completion: nil)
        }
    
     var share = ""
    
}
