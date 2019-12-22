//
//  Sassy.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 21/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit

class Sassy: UITableViewController {
    
    var sassy = [
        "SASSY",
        "Don’t be average, be savage",

        "Life goes on, with or without you.",

        "Don’t study me. You won’t graduate!",

        "You couldn’t handle me even if I came with instructions.",

        "50% Savage. 50% Sweetness.",

        "I decide the vibe.",

        "I don’t need your approval to be me.",

        "Why chase you, when I am the catch!",

        "Take me as I am or watch me as I go.",

        "If I were you, I would adore me.",
        "Me? Weird? Bitch Please! I am Limited Edition.",

        "I was both loved and hated for being upfront. But I was just being myself.",

        "Everyone said I could be anything. So, I became sexy!",

        "You don’t have to like me; I’m not a Facebook status.",

        "Confidence level: a selfie with no filter.",

        "Be a flamingo in a flock of pigeons.",

        "I’m headed to space with the rest of the stars.",

        "You’re never going to have me.",

        "Blood type: matte black with a hint of gold.",

        "Try not to think for a brief moment that I really mind what you need to say",

        "It’s not my fault truth hurts, here’s a bandaid",

        "Be the kind of person that makes others step up their game",

        "Single as a dollar but not looking for change",

        "Well behaved people don’t make it into history books",

        "Looks aren’t everything but I have them just in case",

        "People say I act like I don’t care but it’s not an act",

        "I can easily tell how intelligent someone is by how stupid they think I am.",

        "I’m classy, sassy and a bit badassy",
        "I’ve got my sassy pants on. Watch out world!",
        "I’m too glam to give a damn",

        "Life is too short to spend it on part-time people.",

        "Being a Warrior is always better than being a Worrier.",

        "Disappointed? Yes. Surprised? No.",

        "DEPRESSO: The feeling when you don’t have your morning Coffee.",

        "My vibe. My decision.",

        "Happiness can never be found at places you lost it.",

        "Life is never perfect…But this dress is! #selfie",

        "Got back with my Ex last week…Ex Box 360",

        "Oh, Diet Soda? You must really be so healthy.",

        "Was I just lucky? No, I deserved it!",

        "I can never fit in. Landed on Earth to stand out.",

        "I love drinking to my accomplishments. This allows me to drink every night.",

        "But first, let us take a selfie. #selfieaddict",

        "Entrepreneur life.",

    "It was never easy. But definitely worth it.",

        "Try to be a stiletto in a room full of flats.",

        "I prefer doing something known as “what I want”.",

        "Oh dear, why don’t you buy some class?",

        "I hope Karma gets you before I do.",

        "You definitely are a bad idea. But I’m a master of such ideas.",

        "Hurricane mixed sunshine.",

        "Be careful, it’s raining shady people outside.",

        "I can only please one person a day. Today isn’t your day. Tomorrow doesn’t look good either.",

        "Heart wants to say yes it’s just my mom I need to convince.",

        "Tell me not to do something and I’ll do it twice and also take pictures while doing it.",

        "Don’t you ever be ashamed of who you are. Let your parents do that for you.",

        "Be savage, not average.",

        "Listen closely and you can actually hear me not giving any damn.",
        "I don’t sweat. I sparkle.",
        "Good Food = Good Mood",

        "etc. End of Thinking Capacity.",

        "Alcohol you later.",

        "You Can. End of Story.",

        "Life is short. Shop more.",

        "I’m as simple as quantum physics.",

        "The human body is 90% water. So basically, we’re just cucumbers with a lot more anxiety.",

        "A sass a day keeps the basics away.",

        "You’re on my side or in my way. Choose wisely.",
        "There’s always a wild side to an innocent face.",

        "World changes by your example and not your opinion.",

        "Friday feelings on Tuesday.",

        "Better an “oops” than a “what if”.",

        "Personality cannot be photoshopped. Get your own.",

        "I got my own back.",

        "Throw sass around like confetti.",

        "If you can’t handle me at my worst, you don’t deserve me at my best.",

        "It’s not necessary for everyone to like me. Not everyone matters!",

        "Too blessed to be stressed.",

        "I’m cool. PS: You’re not.",

        "Sorry not sorry",

        "You are the puzzle piece to my Lego house. Basically, useless.",

        "Treat me like an option, and I"

       ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sassy.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = sassy[indexPath.row]

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
