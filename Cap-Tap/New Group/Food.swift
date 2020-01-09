//
//  Food.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 29/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class Food: UITableViewController , GADInterstitialDelegate{
    
    var interstitial: GADInterstitial!
    
    var food = [
    "If there is any true love it is food.",

    "There is nothing better than tasty food. Change my mind.",

    "The only thing I love is my food and my also my food.",

    "I am so introvert that only person I look forward to meet is my food delivery guy.",

    "You know what is better than a cheese pizza. An extra cheese pizza.",

    "If I ever share my food then you should know that you are damn special for my future.",

    "A burger is meant to be eaten like you love it.",

    "Everytime I order food I get goose bumps as if I’m ordering love.",

    "If you cannot cook good then order it from somewhere.",

    "Food is love of life.",

    "If I cook, I make sure I good it as good looking I am.",

    "The saddest thing about food is not being to able it.",

    "If you want to take me on date, bring me food.",

    "If you see me sad, bring me food; pizza specifically.",

    "How could someone not love cold coffee with ice cream.",

    "To all those chai lovers have you ever drunk cold coffee with ice cream?",

    "Eat and sleep is what I do on repeat.",

    "How wonderful it would have been if we could eat without getting fat.",

    "I would not believe in development until we can eat as much as we want and still not get fat.",

    "If you ever dare to surprise me at midnight, it had better be food.",

    "Books and food are the best things to give to someone.",

    "If you are wondering about where to take me, out. Take me to a place with lots of food.",

    "I am not like people who take so much time for ordering food. I have been thinking about it ever since we decided to eat.",

    "For those who say who boys cannot cook should visit me once.",

    "I am not good in cooking but I know many places with good food which is same.",

    "If you date me, i will share everything with you but my food.",

    "If you ever try to eat my last slice of pizza then we are done, it’s over.",

    "I want to marry a guy who can cook because we cannot order food from outside daily.",

    "I am as possessive about food as other girls are about their boyfriend.",

    "Hey girl, it’s okay if you cannot cook. I will do that for you.",

    "I do not spend money on shopping rather I spend it on eating.",

    "Cold coffee is all I need when I am stressed, happy, enjoying, angry; in my every mood.",

    "You know the best thing about food, it does not complain.",

    "If your friend orders food for you then that friend is bliss.",

    "In love with street food isn’t a statement. It is an emotion.",

    "A fancy restaurant is not good at all, if it does not serve my favorite food.",

    "Food is not a word it is an emotion.",

    "If you do not get excited about food then I do not want to be friends with you.",

    "Food is for foodies.",

    "To the people on diet, you do not know what you are missing.",

    "Food should be the top priority of everyone.",

    "Food is the best invention for humankind.",

    "How wonderful it would have been, if we can eat and not get fat.",


    "Making food is too mainstream. That is why I order it online.",

    "Food is the drug that I take regularly.",

    "You know what the best thing about food is. EVERYTHING.",

    "Half of my salary is wasted on the food.",

    "Food is what I need in all my blues.",

    "If you ever see me in a restaurant, order me food before start talking.",

    "It’s tough to love food and fitness at the same time.",

    "I wasn’t able to choose between two food options so I ordered both.",

    "Everytime I am confused what to eat, I choose all the options.",

    "Tasty food is the bliss of live.",

    "I didn’t choose food. Food chose me.",

    "Cold coffee in evening at your terrace is the best option available.",

    "If you can cook good food for me, we are living together forever.",

    "People who o not eat street food do not know what they are missing.",

    "The only type of festivals I look forward is the food festival.",

    "Gaming and eating food are the two things I am good at.",

    "Pizza is the only that I do not share loved ones also.",

    "The people of deny for food is the type I want to stay away.",

    "Nothing gives as much happiness as calling food MINE.",

    "You see that food with extra cheese, its mine.",

    "French fries are those potatoes who went Harvard to graduate.",

    "If you do not like French fries can I eat yours too?",


    "Horror story: and then she eats my French fries.",

    "Girls who eat my food on a date are the worst kind.",

    "Movies and chips in a blanket with bae is the best date.",

    "If eating is disease then I am its patient.",

    "How can I say no to food when it the only thing that makes me happy.",

    "I take myself out on a date to eat the food I like.",

    "Loving my life and food!",

    "With time every priority change but not priority of eating.",

    "I may settle for everything but with food there is no compromise.",

    "Lucky are those who eat and are still in great shape.",

    "I travel the world to taste food of different countries.",

    "Cooking is an art and I am an art lover.",

    "If you see tasty food, go and eat it.",

    "Eat, eat, eat and then repeat.,",

    "I eat until I get tired from eating. Then I take rest and eat again.",

    "To me easting is like breathing.",

    "Eat until you breathe.",

    "I live to eat every day.",

    "Pizza and bae, my two loves.",

    "Does love for chocolates makes you a foodie?",

    "I do not need a lover I need food.",

    "Imagine what will happen if there would not be any of good food? Now stop imagining and start eating.",

    "My best friend is one who brings me food.",


    "A friend who gives you his/her share of food are the best of kind.",

    "People say I eat a lot, so I stopped…talking to those people.",

    "The people who stop you from eating are the kind you want to stay away.",

    "If I ever gets kidnap it will be because be kidnapper offered me my favorite food.",


    "How does it feel to not able eat your favorite food? Don’t ask me, I always eat it.",

    "If you are ever bored then come to me, we both will eat together.",

    "Interrupt me at any point of day but not while eating.",

    "Eating like living.",

    "Friendship goals: eating together.",

    "People who know what to eat are sorted for their life.",

    "The day I won’t eat my favorites food will be the day… just stop that day won’t come ever.",

    "Food is happiness. Happiness is food.",

    "Happiness can be found in all shapes and sizes, for example see food.",

    "It is good to love food but nothing meets when you are crazy for it.",

    "Being foodie is difficult because all you want to do eat, sometimes your friends’ food as well.",

    "Loving food is like loving someone who will give everything just to meet your expectations.",

    "To everyone who doesn’t lust over food, how are you even alive?",

    "If you want to be my best friend, remember do not try taking food from my plate under any circumstances.",

    "How boring it would have been if we have to eat only one type of food for life.",

    "Eating and sleeping all day are my best qualities.",

    "I know love is all great and mighty but what about food and more food.",

    "If you are looking for true love then you should start loving your food.",

    "To make friends you need to eat together.",

    "Everytime me and my gang go out, it’s not to have fun but to eat.",

    "I eat all day and when I cannot eat, I talk about eating it.",

    "I do not get excited seeing humans as I get excited seeing food.",

    "Food is just like orchestra, only good flavors turning to band.",

    "Yes I agree that it is easy to cook, but is it easier than ordering online food.",

    "There is nothing like healthy and good food. They are parallel lines of food world.",

    "If you can make your food healthier than you can even spoil its taste.",

    "Either it is good food or healthy food. They both cannot come together.",

    "You want to see my true love but you can’t because its dead. It was the chicken that I ate sometime back.",

    "If you can like veg-briyani then sorry we cannot be friends.",

    "Is thinking about food all day comes under normal?",

    "Yesterday I was thinking about quitting junk food. Then? Nothing much, I just stopped thinking.",

    "People who suggests you bad places to eat are the ones you should stay away.",

    "I want a pajama restaurant where I don’t need to dress up to go and eat.",

    "Eating and being in my bed all day is my new thing.",

    "The first thing my parents did when I was born was to feed me. And since then I never stopped loving food.",

    "For me food is fuel.",

    "Everytime I see my favorite food I forget that I am on dieting.",

    "Dieting can be tough man when you are a food lover.",

    "Eating like its rejuvenation time.",

    "If its made of chocolate then I love it.",

    "I can break a promise, a relationship but a promise to eat food together can never be broken by me.",

    "Love for rice is the new cool thing for me.",

    "I love home food that is why I do not eat outside rather I will get it parcel for home.",

    "You want to feel melting love in your mouth then you should try eating cheese pasta.",

    "If I have lots of problems then I will eat first then sleep.",

    "Someone said to me that I should do what I love and since then I am eating my favorite food daily.",

    "World would be divided by borders but it is united by food.",

    "Divided by nations and united by food.",

    "Someone said to me that go and do something, which you enjoy, so I slept only after eating.",

    "Can I eat without gaining weight?",

    "I want to eat my favorite food but the problem is i am full but my heart is.",

    "Sometimes, your stomach is full but not your heart.",

    "Eating dessert first because life is uncertain AF.",

    "To balance my diet I take food in my both hands.",

    "If you do not love pasta then sorry, I cannot love you.",

    "Break the promise done with me but not the plan of eating together.",

    "If you are looking for secret love ingredient then my dear, it is either the cheese or chocolate.",

    "Midnight snacks are what keep me sane all the night.",

    "Sure you want your loved ones to lie on your lap and I want it too. That is why I have pizza in my lap.",

    "Coffee is the new symbol of not discriminating among people because no matter if it is black coffee, white cream coffee or tanned coffee we still love coffee.",

    "If you are out of ideas, coffee is the idea to bring out other ideas.",

    "I was following my heart and then I do not know how I reached to fridge.",

    "My love for coffee is like love of girls for lipstick.",

    "Nothing matches the sweetness of chocolate, which is flowing through the lips of your girlfriend.",

    "The favorite place of mine to eat chocolate is from my girlfriend’s lips.",

    "If I would have to hunt for my food, I will starting French fries first.",

    "French fries I that fat guy who exercised hard and maturity hit him.",

    "To live life to the fullest you need to have a full stomach too."]
    

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
        return food.count
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
       if interstitial.isReady {
                interstitial.present(fromRootViewController: self)
              }
        
       
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LitCell

        cell.Textlbl?.text = food[indexPath.row]
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
