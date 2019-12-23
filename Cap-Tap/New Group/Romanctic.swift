//
//  Romanctic.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 21/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds


class Romanctic: UITableViewController, GADInterstitialDelegate {
    
     var interstitial: GADInterstitial!
    
    var romantic = [
   
        "I feel the most alive, when I’m with you.",

        "We go together like pencil and erasers.",

        "I found someone who treats me like I’m flawless, even though I’m not.",

        "What we is extra special, just like a falling star.",

        "You’re the best thing that has happened to me.",

        "We may be far away from each other, but every memory we have together will remind me that travelling the distance is worth it.",

        "You make me happy in a way even chocolate can’t.",

        "I love being wild with you.",

        "Every time I see you, my heart skips a beat.",

        "I love how our hands fit together like tiny puzzle pieces.",

        "Listening to silly things that are on your mind is the best feeling ever.",

        "You’ve been there for me when no one else was.",

        "I’m grateful to have a girlfriend/boyfriend like you.",

        "I still remember our first kiss or even our first fight. These little moments hold the most love.",

        "You’re my candle in the dark.",

        "I love being able to speak my mind and have you listen to everything I have to say.",

        "Let’s cuddle and forget about the world. ",

        "I remember the moment I fell for you.",

        "With you, my world feels Complete and Time Stands Still.",

        "You’re the missing puzzle piece that completes the picture of my life.",

        "Love is not about finding the perfect person. It’s all about loving an imperfect person perfectly.",

        "I didn’t know that falling in love would be so beautiful, until I met you.",

        "If I happen to write a story about my life, be warned you’re the dashing, romantic hero in it.",

        "I like me a lot more, when I’m with you.",

        "I guess I’m addicted to you.",

        "Yes, I want you to be happy. But, I wish you would be happy to be with me.",

        "I love you. And, that’s all I know.",

        "You’re my sunshine on a cloudy day.",

        "You put a spring in my step.",

        "If I know what’s love, it’s because of you.",

        "I have never finished falling in love with you.",

        "I love me, because I love you.",

        "You’re not my number one. you’re my only one.",

        "I can’t wait to spend the rest of my life with you.",

        "You and me make a wonderful WE.",

        "You have no idea what you do to my heart, every time I see you.",

        "Sitting next to you, doing nothing, means absolutely everything to me.",

        "It’s crazy how I automatically smile, when I’m talking to you.",



        "You sweetened my life with your love.",

        "I can’t afford to lose you because you’re my soul mate, my everything.",

        "I fell in love with the world in you.",

        "Loving you is all I want to do.",

        "Your laugh has this incredible way of making me happy",

        "Talking to you is the best part of my day.",

        "I want to be with you, be it 4PM or 4AM.",

        "I would rather break my own heart than yours.",

        "The best feeling is when I get to make memories with the one I want to spend my forever with.",

        "I love how you call me just to hear my voice.",

        "You made me brave enough to lose all my fears and now, the only fear I have is losing you.",

        "Your voice is the natural drug which cures all my pain.",


        "It’s amazing when someone walks into your life one day, and you just can’t remember how you lived without them for so long.",

        "Your arms are the best home I’ve ever had.",

        "The best love is the one that makes you into a better person, without changing you into someone else.",

        "You’re my today and the rest of my tomorrows.",

        "You’re my favorite place to go, when I want to feel happy.",

        "I wish I had the power to travel back in time – so that I’d find you sooner and love you longer.",

        "I guess the entire universe has been conspiring behind my back to help me find you.",

        "You’re the best present I’ve ever received.",

        "Someday a person enters your life out of nowhere and suddenly turns your whole world upside down.",

        "You’re my favorite daydream.",

        "Every day with you is a new adventure.",

        "I want you to be part of my life, till it’s the last page.",

        "You make my heart happy, like no one else.",

        "Forget the butterflies, I get the whole zoo, when I’m with you.",

        "You don’t cross my mind. You’ve pitched a tent in there.",

        "I think I’ve found the one, whom my soul loves.",

        "The first time, my eyes laid on you, my heart whispered to my brain,He/she is the one.",

        "What I have with you, I don’t want with anyone else.",

        "Maybe I was too late to be your first, but I hope that I’m your last.",

        "You made me smile again.",

        "The summer may end, but our summer memories will last forever.",

        "You’re the apple to my pie.",

        "I still fall for you, everyday of my life.",

        "You, me, pumpkin spice and everything nice.",

        "I may be freezing outside, but your love keeps me warm.",

        "I love you a latte.",

        "Trees burst into color every October. And, you’re the October of my life.",

        "We go together like sweater and winter.",

        "Cold nights, warm blankets and you beside me. That’s all I ever need.",

        "If kisses were snowflakes, then you’d be trapped in a fricking blizzard.",


        "Our relationship is like peanut butter and jelly. One cannot exist without another. *insert peanut emoji*",

        "We are two peas in a pod. #couplegoals",

        "Head over *insert heels emoji*",

        "You + me = *insert heart emoji*",

        "There may be plenty of fish out in the sea. But, for me, you’re the only one I need. *insert fish emoji*",

        "I think you’re lacking Vitamin ME.",

        "Some people are worth melting for *insert snowman emoji*",

        "We go together like cupcakes and frosting.",

        "I like when you smile, but I like it better when I know I’m the reason for your smile.",

        "Would you consider switching to lace-less shoes? Coz, I don’t want you falling for someone else.",


        "I’m nuts about you. *insert acorns emojis*",

        "Sorry to sound cheesy, but you’re my butter half.",

        "You’re my sounding board and I’m glad I’ve got you in ma life.",

        "Orange you glad you met me *insert orange emojis*",

        "You’re my partner in wine.",

        "Let’s be weird together.",

        "Can I borrow a kiss? I promise I’ll give it back double.",

        "I know it’s rude to stare. But, you’re so cute, that I cannot help it.",

        "I fell in love with you for a million things, you did without knowing it.",

        "You’re my favorite distraction.",


        "Just like wine, you get better as you age.",

        "Sorry ladies, he’s taken.",

        "Game day with bae #cheering",

        "Man crush everyday #myBF #myLife",

        "My very own Prince Charming.",

        "You understand me, even when I don’t say anything.",

        "Every day I spend with you, is the best day of my life.",

        "You’re my happiness.",

        "I still get butterflies every time I see you.",

        "Even If I have spent the whole day with you, I start missing you, as soon as you leave.",

        "The Yin to my Yang.",

        "My girl, My World.",

        "Sorry guys, she’s mine.",

        "Thinking about my girl, is my fav hobby.",

        "My Miss Universe 2018.",

        "To the world you may be yet another girl, but for me you’re my world.",

        "Me and my girl creating #couplegoals since (insert the year since you’ve been together).",

        "Life’s peachy with you at my side *insert peach emoji*",

        "Hey girl, don’t you get tired? For you’re been running on my mind forever.",

        "You know you’ve found the right girl, when even the cheesiest things don’t look so cheesy anymore.",

        "Even the gloomiest days become sunny when you smile at me.",

        "How did God let you down from heaven?",

        "Unexpected kisses are the sweetest.",

        "I’m 100% single just for you.",

        "Live in my heart rent-free, for the rest of your life.",

        "You’re my first thought when I wake up and the last thought before I hit the bed.",

        "My heart’s mine, but whenever we argue, it ends up taking your side.",

        "Thinking of you is my favorite part of the day.",

        "Hello, I’m a thief, and I’m here to steal your love.",

        "I can read lips when they’re touching mine.",

        "It’s not my fault that I fell for you.",

        "You turn me into Wordsworth!",

        "I’ve got so much to say, but your eyes keep on interrupting me.",

        "I’m on my bed, and you’re in yours. One of us is in the wrong place.",

        "Till the day, I can hold you in my arms, I’ll hold you in my heart.",

        "Girl, aren’t you tired? You’ve been running in my heart all day.",

        "I’m like a fish out of water when I don’t see YOU!",

        "Are you my oxygen? Without you, I find it difficult to breathe.",

        "Girl: why are you following me? Boy: My mom told me to follow my heart.",

        "I’m not flirting. I’m just extra attentive to someone who is attractive.",

        "If nothing lasts forever, will you be my nothing?",

        "With me, you’ll always have a shoulder to lean on.",

        "That awkward moment when your crush mistakes your kindness for flirting.",

        "You are the beat of my heart.",

        "When you sat down next to me, my heart just forgot to breathe."
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
        return romantic.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = romantic[indexPath.row]

        // Configure the cell...

        return cell
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
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        if interstitial.isReady {
           interstitial.present(fromRootViewController: self)
         }
        
        let cell = tableView.cellForRow(at: indexPath)
        UIPasteboard.general.string = cell?.textLabel?.text
        
        
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
