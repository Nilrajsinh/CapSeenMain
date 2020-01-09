//
//  Season.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 29/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Season: UITableViewController , GADInterstitialDelegate{
    var interstitial: GADInterstitial!
    
    
    var season = [


    "The only thing getting lit this weekend are my fall scented candles",

    "Pumpkin spice up your life",

    "At this point my blood type is pumpkin spice",

    "I love sweaters like Kanye loves Kanye",

    "Stressed, blessed & pumpkin obsessed",

    "Ghosted in October? how festive",

    "It’s almost time to switch from my everyday anxiety to my Christmas anxiety",

    "*slams dunks a pumpkin* fall is life",

    "Sweater weather is my favorite weather",

    "Fall so hard, motherpumpkins wanna spice me",

    "Fall is that beautiful moment between sweat & hypothermia",

    "Tis the season to Fall-y",

    "Put the boo in booty",

    "It’s October – time to put your resting witch face",

    "All these ghosts and still can’t find a boo",

    "Let’s carve out some fun",

    "Fa-boo-lous",

    "Give ’em pumpkin to talk about",

    "Creep it real",

    "I’m here for the boos",

    "If you’ve got it, haunt it",

    "Fall is my second favorite F-word",

    "Hold onto your nuts – fall is here!",

    "Alexa, bake me pumpkin pies and tell me I’m beautiful",

    "Pro tip: Keep pie from drying out by eating it all in one sitting",

    "Fall: that beautiful time between boob sweat and frost bite",

    "I decided to give up caffeine for halloween, if that doesn’t scare people I don’t know what will",

    "Thanksgiving is almost here… don’t forget to set your scale back 10 pounds",

    "My summer bikini body wasn’t ready but my fall sweater body is on point",

    "Instead of yelling BOO this halloween, yell something scarier like commitment or student loans",

    "For Halloween, I’m going to be emotionally stable. No one’s gonna know it’s me.",



    "Who stole my candy?",

    "Diving my witch face in a bag of candy.",

    "I’m only here for the candy. Bring it to me!",
   " I just had some pasta and boy, was it creepy.",

    "This is not the only time of the year when I enjoy being a witch.",

    "I swear I saw a ghost in my room and I scared it away.",

    "I definitely look Boo-tiful.",

    "Flaunting my fangs since (Birth Year)",

    "It’s hard not to pretend that you’re a vampire and scare the kids to eat all the candy.",

    "What a wonderful candy rush.",

    "I love pretending that I’m a witch, it keeps the kids away even after Halloween.",

    "I had the most boo-tiful Halloween.",

    "Guess who had a fang-nomenal time? Yes, it was me,",

    "I’m not scared of boo-ing the kids away.",

    "A glass of wine and a bowl full of candy, need I say more?",

    "I hope you’re not going to wear the outfit you wore last year.",

    "Happy halo-ween!",

    "We are just my very own version of #squadghosts",

    "Who says boys should have all the fun? Ghosts deserve it more.",

    "We are just a group of dumb ghouls.",

    "Happy, independent, confused yet completely fangtastic.",

    "Are you sure you haven’t met my zombaes?",

    "We are just a sassy bunch of boos.",

    "Carving the pumpkin together. #squadghosts",

    "If putting a spell on your drink will make you mine, let me do it now!",

    "Hey Pumpkin. Happy Halloween!",

    "I don’t wake up early, the night is my calling.",

    "G-owls like us stay way past our bedtime.",

    "I think I find the demon in my room kind-of cute.",

    "I just put a spell on you. Poof! You’re mine.",

    "Halloween is all about eating candy.",

    "My friends are monsters, quite literally.",

    "I’m not afraid of ghouls, I’m more scared of my friends without makeup.",

    "It’s Halloween. Are you sure you don’t want me to.. Eat you?",

    "Drinking some blood… or is it red wine? Guess I don’t know!",

    "It’s getting darker outside; The perfect time to lurk in the dark.",

    "I love how easy it is to creep things real on Halloween.",

    "I love dressing up on Halloween. There’s this really spooky yet funky vibe in the air and you never know if there’s an actual ghost running around.",

    "All I really wanted was a tub of popcorn, some red wine, and a spooky movie but here I am, dressed up as a monster.",

    "Hocus Pocus! Get me some wine.",

    "Was that a ghost I saw or was it my own reflection?",

    "Shut up before I toss you in my bubbling witch potion.",

    "Happiness and laughter make me sick to my stomach. Get me a dose of screams to balance it out!",

    "It’s not just Halloween. It’s the time when everyone can dress up as ghosts and not feel scared. I especially love tossing candies in my mouth.",

    "There’s a difference between dressing up for a date and dressing up for Halloween. Do you look your best for your date, but for Halloween? Let’s not go there.",

    "I swear a Black cat screamed and ran away after looking at me. That’s how scary I look.",

    "Halloween is my day – Carving pumpkins, acting like you’re dead and running after kids looking like a monster. Is there anything better than this day.",

    "Halloween is definitely not like any other days. There is just so much excitement and cheer around that you can’t help but dive into the Halloween fever.",

    "Halloween is my excuse to act like my real monster self and never allow others to find out.",

    "I don’t know what’s harder – not eating all the Halloween candy in one go or choosing an outfit which is scarier than everyone else’s.",

    "The best part about Halloween is not just the candy, it’s the fact that you can scare your loved ones with ease!",

    "Come over and we’ll watch the scariest movies all night. Isn’t that what Halloween is all about? Getting scared to death!",

    "I’m going to Instagram my outfit just in case you want to try to recreate it next year. You know, like you always do.",

    "I promised myself that I wouldn’t eat all the candy, but the zombie in my room told me otherwise.",

    "Ah, you spent weeks on that outfit or spent weeks trying to make it look worse?",

    "I’m having a party at my place, but the only person I invited was the monster who lived in the attic. We’re kind of best friends now.",

    "I swear we’re no longer friends if we show up on Halloween in different costumes. Ghouls like us stick together.",

    "Let’s face it, I’m just a little too pretty to look like a basic witch on Halloween. I need to go all out.",

    "The perfect pictures are those which define the relationship of you and the ghouls in your squad.",

    "I can go a long way to look like a vampire. I swear I bit my boyfriend yesterday.",

    "If you didn’t scare your neighbors by making ghost sounds, seriously, what did you do on Halloween?",

    "I don’t know what scares me the most, the image of me wearing my witch outfit or the fact that I never clicked it",

    "Summer lovin'",

    "Here comes the sun",

    "I was made for sunny days",

    "Sunsets & iced coffees",

    "Trippin' on skies , sippin' waterfalls"]
    

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
        return season.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell

        cell.Textlbl?.text = season[indexPath.row]
               
        
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
