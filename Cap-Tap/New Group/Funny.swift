//
//  Funny.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 29/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class Funny: UITableViewController , GADInterstitialDelegate {
    var interstitial: GADInterstitial!
    
    var Funny = [
    "I might look innocent, but I screenshot a lot.",

    "Monday should be optional.",

    "Brains are awesome, I wish everyone had one.",

    "Be a pineapple. Be horny, but also sweet.",

    "The hours between coffee and wine really are pointless.",

    "I am the human version of tangled headphones.",

    "I could give up shopping, but I’m not a quitter!",

    "Fries over guys.",

    "Dear liver, this month will be rough. Stay strong.",

    "I need to find hobbies that don’t include my debit card.",

    "No offense to me but wtf am I doing.",

    "Chocolate please because adulting is hard.",

    "Never not late.",

    "My boss told me to have a good day. So, I went home.",

    "I wonder how many calories I burn daily by jumping to conclusions.",

    "I just used to crastinate, I’m so good, I went Pro!",

    "I’m not a bitch, I’m a BOSS BITCH.",

    "The only BS I need in my life is bags and shoes.",

    "A meal without wine is breakfast.",

    "Ninety-nine problems but a beach ain’t one.",

    "I’m a better person when in tan.",

    "Better late than ugly.",

    "In memory of when I cared.",

    "I enjoy long romantic walks down the wine aisle.",

    "Love yourself like Kanye loves Kanye.",

    "It’s so rude when people don’t cancel last minute.",

    "Born to shop, forced to work.",

    "Friday is my second favorite word, first is food obviously.",

    "Why overthink when you can overdrink?",

    "Men’s perfumes are better than men themselves, honestly.",

    "There are not enough rap songs about staying home on a Friday night!",

    "You miss 100% of the dogs you don’t pet.",

    "I’m just impressed by how ugly I’m willing to look these days in public places.",

    "That’s enough toadying for today. I’m done.",

    "A balanced diet is a bottle of wine in each hand.",

    "Being a sleepy girl with a busy life is hard.",

    "Fun fact: Wine is cheaper than therapy.",

    "Where can I download motivation?",

    "I broke up with my gym, we were just not working out.",

    "Inside me lives a skinny woman crying to get out, but I can shut her up with a donut!",

    "2% girl, 98% anxiety.",

    "You know what I like about people? Their dogs.",

    "You know you’re an adult when going home gets you excited.",

    "You don’t realize how long a minute is unless you’re exercising.",

    "Feed your own Ego, I’m busy.",

    "Being 16 has its perks.",

    "I don’t treat people badly, I treat them accordingly.",

    "Finally, my winter fat is gone!",

    "Him: Don’t cry baby, it’s just a movie. Me: Don’t cry baby, it’s just football!",

    "Wonder if life smokes after it fucks me.",

    "I don’t need a hair stylist, my pillow gives me a new hairstyle every morning.",

    "I’m a Texan with bunches of sentiments and beautiful hair.",

    "Mom: Why is everything on the floor? Me: Gravity!",

    "Well, my mom was right about everything…",

    "Wait, don’t leave! Let me open the door for you.",

    "My goal this weekend is to move, just enough so people don’t think I’m dead.",

    "Not all men are fools, some stay bachelor.",

    "I pretend to work. They pretend to pay me.",

    "Twenty-four-hour alcohol diet.",

    "Pics or it didn’t happen.",

    "If you look really closely, you can see me not caring.",

    "If I was funny, I would have a good Instagram caption.",

    "Marriage is like a workshop where the husband works and wife shops.",

    "Memes are just a normal post if you don’t have a friend to tag.",

    "My mobile camera isn’t working well. Or I might look like an angel.",

    "Be a badass with a good ass.",

    "The real reason women live longer than men because they don’t have to live with women.",

    "Underestimate me, that’ll be fun.",

    "Friday, my second favorite F word.",

    "There may be no excuse for laziness, but I’m still looking.",

    "I hate people who steal my ideas before I think of them.",

    "I’m literally jealous of people who are good at Math!",

    "5 am – The hour when legends are either waking up or going to sleep.",

    "Bored of being bored because being bored is boring.",

    "They say love is more important than money, have you ever tried paying your bills with a hug?",

    "They say “love is in the air.” Maybe that’s why there’s so much pollution these days.",

    "Treat me like a joke and I’ll leave you like it is funny.",

    "Today morning when I was driving my Ferrari, the alarm woke me up.",

    "I don’t need you in my life, I just need weather, food, and drinks.",

    "I live in a world of fantasy, so keep your reality away from me.",

    "Friends are forever until they get into a relationship.",

    "I don’t have an inner child, I have an inner old lady!",

    "I speak two languages, body and English.",

    "I’m really good at apologizing for things that aren’t my fault. Thanks, mom!",

    "I wish my teeth were as white as my legs.",

    "The first 6 days after a cheat meal are the hardest!",

    "Wanna hear a joke? Decaf.",

    "A wise person once said, “Fuck this shit.",

    "The only ILY I know is, I’m Leaving You.",

    "I hate wearing my important outfit and no one important sees me in it.",

    "I just don’t think we are compatible on an astrological level!",

    "I got trust issues because people got lying issues.",

    "Coffee helps me tolerate the world.",

    "I have my dad’s eyes, I can’t find anything either.",

    "I’m so excited for spring, I think I wet my plants.",

    "Do I like my job? No! But does it allow me to live the lifestyle I want? Also no!",

    "Mum is right, I am beautiful!",

    "If you’re happy and you know it, thank your EX.",

    "The trick is not to let people know how weird you are until it’s too late for them to back out.",

    "My house is not a mess, my toddler redesigned it.",

    "Not gonna not Insta.",

    "Nothing ruins your Friday like realizing it’s only Tuesday.",

    "My Yoga pants have never been to yoga.",

    "I would love to but my dog said no.",

    "Been there, done that. Then, been there a few more times because I don’t learn.",

    "Not everyone you lose is a loss unless it’s me.",

    "I am allergic to mornings.",

    "Home is where the pants aren’t.",

    "Wrong suits me.",

    "Another fine day ruined by responsibilities.",

    "I am currently experiencing life at the speed of WTF’s per hour.",

    "My book club only reads wine labels.",

    "On Cloud Wine."]
    

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
        return Funny.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell

         cell.Textlbl?.text = Funny[indexPath.row]
        share = Funny[indexPath.row]
        
        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
         tableView.deselectRow(at: indexPath, animated: true)
        
        if interstitial.isReady {
                 interstitial.present(fromRootViewController: self)
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
    @IBAction func ShareBtn(_ sender: UIButton){

        
          let activityvc = UIActivityViewController(activityItems: [share], applicationActivities: nil)
            activityvc.popoverPresentationController?.sourceView = self.view
            present(activityvc, animated: true, completion: nil)
        }
 var share = ""
    
}
