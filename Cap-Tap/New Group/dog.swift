//
//  dog.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 30/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds



class dog: UITableViewController, GADInterstitialDelegate {
    
    var interstitial: GADInterstitial!
    
    
    var dog = [
    "One of the best journey of dog can easily be traveled with the dog.",

    "Love is making the promise to the dog, in good times and in bad times, until the death you will always be the part.",

    "Love is making the lifeline commitment to the dogs.",

    "If you can never love the dog as your family member then there is no need for you to get one.",

    "Dogs the best creature of god they treat you like your family member and to them you are their family.",

    "Dog are one of the most trusted and confidants",

    "Having a pet dog in your house makes you a better human being.",

    "The road to my heart is being lead by the paw prints",

    "One of the best difference that5 can be seen between the man and women is, you pick up a starving dog and makes them prosperous make sure that he will never bite.",

    "If dogs could talk [we would have find harder to go with them alone as we do with the people.",

    "The world can be one of the best and the nicest place if in case all people have the ability to love dog unconditionally.",

    "The dog can easily help you in getting out of the bad mood and this is as faster as u can never think of.",

    "Till the time you don’t have a dog you can even think of what life could be without the dogs but after having you can t imagine life without them.",

    "Money can help you in buying the best dog, but your love for him will only help you in wagging his tail.",

    "Dogs can also talk to you but only the people who knows how to listener",

    "No dogs bite you, but human does.",

    "One of the best ideas of happiness is to be out in rain with my dog, my cat and that is all I need.",

    "If there are no dogs left in the heaven, I will pay to god send me where they went.",

    "If all the dogs will come to you after having looked you in the face, then you should go and get your conscience checked.",

    "Dogs are known one of the best, and if you are calling them bad dogs then this is perhaps the great thing that you can do.",

    "There is no one that will appreciate you with a very special genius of your conversation that dog does.",

    "No matter what you are rich or poor, having a dog it selves makes you rich.",

    "Old dogs are like old shoes, they are known to be very comfortable, they are out of shape, and are worn around their edge, but they fits you very well.",

    "One of the best things that you can really enjoy is train a dog to be a semi human. The point in this is to open oneself to the possibility of becoming the half dog.",

    "Don’t accept the administration of your dogs; his is the evidence that you are wonderful.",

    "According to the history there are many examples being made that dogs are more fidelity of dogs than that of your friends.",

    "Dogs can easily help you in finding the people who are in great need of them, filling with emptiness and this is the thing that we don’t even know about.",

    "Dogs are the one that teach people with the best lesson of life, that is the mail man should never be trusted.",

    "A dog always desires to get affection than its dinner",

    "One of the best quality of the well trained dog is he will never make attempts to share your lunch with him. He will make you feel so guilty, that you cannot enjoy it without sharing it with them.",

    "Dogs are one of the most amazing creatures on the earth; they share unconditional love with you. They are known as role models and they are still alive.",

    "If you need to have a friend in Washington then don’t worry and have a dog",

    "Dogs in our life play a great role they teach you about love and when they depart they teach us about loss. A dog can never replace the other dog. They can just expand their hearts.",

    "There is no one who can easily understand the meaning of love till the time you own a dog. A dog can easily help you and show all the honest affection with the help of the flick of his tail, than a man can never gather through handshake through a lifetime.",

    "One should not care for the men religion whose dogs and cats are. They are better than this.",

    "What do dogs and cat do when there is day off? They just can’t lie around it’s their job.",

    "The average dogs are nicer than the average person.",

    "A dog is known as a gentleman, I would like to go to his heaven rather than going on mars",

    "If you are a dog and if your owner suggest you to wear a sweater than its better that he wears a tail.",

    "I am less cranky when I am alone with my dog.",

    "If there is a man who aspires you to righteous life, the first action that one should take is to act of abstinence from the injury to animals.",

    "Every people things that have the best dog, and there is no people who is wrong.",

    "Poor dogs are known to be one of the more firm friends. The first thing is they are the first to welcome and are the foremost is to defend.",

    "When a 85 year old mammal licks your tears and tries to sit on your lap, its very hard to feel sad.",

    "There are many ills that we get from the people sneezing over me and giving me infections and virus rather than kissing the dog.",

    "It’s very hard for me to get stay married as my wife kisses the dog on lips but don’t drink water from my glass.",

    "There no faith that is being broken by the dog except the one that is truly faithful like my dog.",

    "The dogs you are intelligent does not need to please people, whom they do not respect.",

    "Have you ever walked in the room and forget the reason why you walked in? this is how the dogs spend all their lives.",

    "With a tiniest poodle and a chihahia is still is great wolf at my heart.",

    "What are the things that are being counted is not at all necessary for the size of the dog while fighting. It’s the size of the fight in the dog,",

    "The live of dog is too short and this is the only fault",

    "One of the greatest fears that your dogs have is the fear that they will never come back when you go out of door without them.",

    "A dog is one of the best teachers that teach you to turn three times till the time you lie down.",

    "One of the most historical and artistic treasure that can be place with the aerators in museums, and the other we take them for a walk.",

    "There is one thing that I have found in you is when you were in great trouble, there are many things that you get from the silent devoted companionship of dogs than from any other place.",

    "Our pets have very short life to spend with us and the most of the time they spend waiting for us in our home.",

    "There are many shelter dogs who are known to be mutts like me.",

    "The dogs are known as the dies; they go to the library and pick the book with an award sticker and the one that has dog on their cover. Have trust that the dog is going down.",

    "Vanderbilt and Astor can together raise money to buy the quarter share in my little dog.",

    "One of the best reason why dogs are known to be smarter than the human, the reason is once you leave the little, you can easily serve contact to your mother.",

    "There are hounds follow for the one who feed them.",

    "There is a great inspiration given by my cat daily that is they inspire me to get a dog.",

    "Life is like getting a series of dogs.",

    "There is no other psychiatrist in the whole world, which licks your face like a puppy does.",

    "Dogs can share more love than the integrity, they are always been true to us, yes but they are not been true to themselves.",

    "If there is a wonderful dog, and if there is no one, then the life without one can never get diminished.",

    "I never think twice while picking up my dogs poop, but if there is another dog poop next to it then I think eww dog poop.",

    "Dogs are like people would be the important stuff is all that it matters.",

    "There is a day for every dog, till the time he loses his tail, and then there is a weak end.",

    "Dogs are known to be very wise, they can easily crawl into the quiet corner and lick wounds and can rejoin the world again till they are whole one more.",

    "If there is no dog coming up to you after having a look on our face, then please go home and then examine your conscience.",

    "My dog is very worried about the economy as alpo is up to $3.00 a can. That’s almost $21.00 in dog’s money.",

    "Outside of a dog, a book is one of the best friends of a man. But inside the dog the things are very dark.",

    "Just scratch a dog lovingly and I am sure that you will get the permanent job.",

    "The best way to judge a man is through its treatment given to animals.",

    "Love the dog, and there are many ways you can enter the new orbit, the universe helps you to get feature not of new color but of new rituals. They help you in giving one of the new ways and getting the best experience of attachments.",

    "One of the best things that put the man to shame is the ungrateful behavior towards his dog.",

    "A dog is the only one that can help you to mend crack in your broken heart.",

    "The best gift that I am sending to you is known as a dog, this is one of the most precious and valuable possession of mankind.",

    "The old saw about the old dogs is that the new tricks can only be applied to certain people.",

    "Here is no animal that is known for consistently one of the most friends and companion rather than the dog.",

    "I wonder sometimes that dogs think of poodles are known to be the poodle members in the religious cult.",

    "I never own a dog, at least one, there is not necessary that things are wrong with you, but there is certainly something that is wrong with your life.",

    "A dog can help you in teaching the unconditional love; if you are having this in your life then things will never go bad with you.",

    "Do you think that dogs are no in heaven; I must tell you that they will live there for long before any of us.",

    "For enjoying the dog company, one should not train him for being a semi human. One should try to make them just a partly of becoming the dog.",

    "Once I decided not to date a boy as he was very excited to meet my dog. This is like he does not want to meet my mother.",

    "Dog are mostly created by dog for children. He is known as a god of frolic.",

    "One of the greatest tragedies in my life is that I want to have a dog but I am crushed with cats for all my life.",

    "If you have a great believe about immortality, that there are many dogs who will go to heaven and very few people.",

    "If you are picking p a dog from the road and make him prosperous, he will never bite. This best difference between dog and people.",

    "One of the most unselfish friend on earth is dog, he is the one that never desert him.",

    "It would be one of the most beautiful world when people will have hearts like dog.",

    "Dogs are the one who don’t looks you from outside, they look you from inside.",

    "Always kiss your dog before you sleep.",

    "Happiness is having dog kisses.",

    "Dogs are not perfect but they make our life perfect.",

    "I found myself loving with dogs more when I came to know men more.",

    "The world will be very beautiful when free ins will have hearts like dogs",

    "Happiness is having the warm puppy.",

    "My cute little god, pure love of mine"]
    

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
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dog.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = dog[indexPath.row]

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
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
         tableView.deselectRow(at: indexPath, animated: true)
        
        if interstitial.isReady {
                 interstitial.present(fromRootViewController: self)
               }
         
         let cell = tableView.cellForRow(at: indexPath)
         UIPasteboard.general.string = cell?.textLabel?.text
         
         
     }
    
    func createAndLoadInterstitial() -> GADInterstitial {
         var interstitial = GADInterstitial(adUnitID: "ca-app-pub-8978960658795160/2397092070")
         interstitial.delegate = self
         interstitial.load(GADRequest())
         return interstitial
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
