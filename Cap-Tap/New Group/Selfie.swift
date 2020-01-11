//
//  Selfie.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 30/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class Selfie: UITableViewController , GADInterstitialDelegate {
    var interstitial: GADInterstitial!
    
    
    var selfie = [
    "I could be anything. So I became sexy.",

    "She’s quick and serious, and playful and strong.",

    "Confidence level: Selfie with no filter.",

    "I don’t need your approval, darling. I have my own.",

    "People call me cute and I’m still happy.",

    "Sweet but you don’t want to mess with me.",

    "Sweet as sugar and cold as ice.",

    "Be savage, not average.",

    "Even on my worst day, I’m killing it.",

    "I’m 99% angel, but oh that 1%..",

    "Make your passion your paycheck.",

    "Rule #1: Never be #2.",

    "Out of the way world. I’ve got my sassy pants on.",

    "I don’t take selfies all the time. I just do it once and a while every day.",

    "Life isn’t perfect, but my hair is.",

    "We all wear masks, and the time comes when we cannot remove them without removing some of our own skin.",

    "Specsy is the new sexy.",

    "That’s pure me.",

    "Hate me, it might make you pretty.",

    "Do smile in the mirror every morning, that’s the best way to start the day.",

    "Life is short, make each selfie fabulous.",

    "I don’t try to be sexy, sexy tries to be me.",

    "No job is complete until the selfie is posted.",

    "Selfie.Ever.",

    "I am cool and hot at the same time.",

    "I graduated from the University of selfies.",

    "When nothing is going right, click a selfie.",

    "If taking selfies was an art, I’d be the Picasso of it.",

    "The random selfies are the best.",

    "A woman is never sexier than when she is comfortable in her clothes.",

    "My dog and I have the best selfies.",

    "Beautiful old people are a work of art.",

    "Envy me, rate me, bottom line: You aren’t me.",

    "They tell you to be yourself and then they judge you.",

    "Why try so hard to fit in when you’re born to stand out.",

    "Wanting to be someone else, is the waste of the person you are.",

    "Hold it high. Look the world straight in the eye.",

    "This is who I am.",

    "Don’t dilute yourself for any person or reason. You’re enough.",

    "Follow your own star.",

    "Be original, be you.",

    "Find out who you are and do it on purpose.",

    "If you cannot be a poet, be a poem.",

    "Being beautiful is being comfortable with your own soul and body.",

    "I am me. Now, isn’t that pleasant?",

    "It’s not about how people look at me, it’s about how I look at myself.",

    "There are times when alone is the best place to be.",

    "Behind every selfie, there’s someone you wish could see you.",

    "If I were you, I would adore me.",

    "Cinderella never asked for a prince.",

    "I’m the girl you’ve always wanted.",

    "You don’t know this new me, I put back my pieces differently.",

    "Sometimes you gotta be a beauty and a beast.",

    "Before you judge me, make sure you’re perfect.",

    "Always classy, never trashy, and a little bit sassy.",

    "Sunglasses and red lipstick can change everything.",

    "Be a girl with a mind, a bitch with an attitude, and a lady with a class.",

    "Skills are cheap. Passion is priceless.",

    "Stay soft and simple.",

    "Sunday feels.",

    "The most beautiful thing you can wear is confidence.",

    "No, I’m not lucky, I’m blessed.",

    "Successfully learned to embrace my natural beauty.",

    "Sometimes I get dolled up.",

    "I’ve been told I’m all hair and legs.",

    "No makeup selfie.",

    "Be your own kind of beautiful.",

    "I now look like a fire type.",

    "I like the coffee, it’s very much like me. Dark, bitter, and too hot.",

    "An early morning walk is a blessing for the whole day.",

    "Morning time is a selfie time.",

    "Be willing to be a beginner.",

    "A have a bowl of confidence and a bowl of attitude every morning.",

    "A selfie reminds you of what you look like.",

    "It’s a selfie Sunday.",

    "You can call me a selfie addict.",

    "It’s been a while since I have taken a selfie.",

    "I’m no beauty queen, I’m just beautiful me.",

    "Don’t I look too happy in this selfie?",

    "Love this new look.",

    "My battery is low but a selfie is a must.",

    "Wherever you go, go with all your heart.",

    "I have never seen a smiling face that’s not beautiful.",

    "The world belongs to the energetic.",

    "People rarely succeed unless they have fun in what they are doing.",

    "Don’t wait for your ship to come in, swim out to it.",

    "Determination becomes an obsession and then it becomes all that matters.",

    "I am not desperate, I am just determined.",

    "He who has a why to live for can bear any how.",

    "When I’m genuinely happy, I take a selfie.",

    "You must keep at it, and someday it will reap rewards.",

    "There is beauty in simplicity.",

    "Keep pushing on.",

    "Not giving up easily, I’m hanging on.",

    "Skill comes from consistent and deliberate practice.",

    "A woman who is aware of her attractiveness is really beautiful.",

    "My real beauty comes from my natural skin and a pure heart.",

    "As we grow old, the beauty steals inward.",

    "Unique and different is the next generation of beautiful.",

    "I am my favorite.",

    "Being sexy is all my attitude.",

    "Dressed like I’m the only girl in the world.",

    "YOU.tiful.",

    "Lashes speak louder than words.",

    "I’m enjoying this look.",

    "Sometimes you don’t need a caption, the picture says it all.",

    "I don’t need any DSLR to admire my beauty.",

    "Never underestimate the power of a red lipstick and a red bag."]
    
    
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
        return selfie.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell
        cell.Textlbl?.text = selfie[indexPath.row]
        // Configure the cell...
        share = selfie[indexPath.row]

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

    
    @IBAction func ShareBtn(_ sender: UIButton){

        
          let activityvc = UIActivityViewController(activityItems: [share], applicationActivities: nil)
            activityvc.popoverPresentationController?.sourceView = self.view
            present(activityvc, animated: true, completion: nil)
        }
    
     var share = ""
    
}
