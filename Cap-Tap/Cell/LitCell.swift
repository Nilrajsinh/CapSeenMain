//
//  LitCell.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 03/01/20.
//  Copyright © 2020 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import FaveButton
import CoreData

func color(_ rgbColor: Int) -> UIColor{
       return UIColor(
           red:   CGFloat((rgbColor & 0xFF0000) >> 16) / 255.0,
           green: CGFloat((rgbColor & 0x00FF00) >> 8 ) / 255.0,
           blue:  CGFloat((rgbColor & 0x0000FF) >> 0 ) / 255.0,
           alpha: CGFloat(1.0)
       )
   }


class LitCell: UITableViewCell ,FaveButtonDelegate {

    
   
     var UserData: [NSManagedObject] = []
    
    
    
    @IBOutlet weak var Textlbl: UILabel!
    
    @IBOutlet weak var SaveBtn: UIButton!
    
    @IBAction func Like(_ sender: Any) {
           
           print(Textlbl.text!)
           
           self.save(email: Textlbl.text!)
           
       }
    
    func faveButton(_ faveButton: FaveButton, didSelected selected: Bool) {
        
    }
    let colors = [
           DotColors(first: color(0x7DC2F4), second: color(0xE2264D)),
           DotColors(first: color(0xF8CC61), second: color(0x9BDFBA)),
           DotColors(first: color(0xAF90F4), second: color(0x90D1F9)),
           DotColors(first: color(0xE9A966), second: color(0xF8C852)),
           DotColors(first: color(0xF68FA7), second: color(0xF6A2B8))
       ]
    
    func faveButtonDotColors(_ faveButton: FaveButton) -> [DotColors]?{
           if( faveButton === SaveBtn ){
               return colors
           }
           return nil
       }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    func save(email:String) {
      
      guard let appDelegate =
        UIApplication.shared.delegate as? AppDelegate else {
        return
      }
      
      // 1
      let managedContext =
        appDelegate.persistentContainer.viewContext
      
      // 2
      let entity =
        NSEntityDescription.entity(forEntityName: "Cap",
                                   in: managedContext)!
      
      let person = NSManagedObject(entity: entity,
                                   insertInto: managedContext)
      
      // 3
        person.setValue(Textlbl.text, forKeyPath: "like")
      
      
      // 4
      do {
        try managedContext.save()
        UserData.append(person)
       
      } catch let error as NSError {
        print("Could not save. \(error), \(error.userInfo)")
      }
    }
    
    
    @IBAction func Copy(_ sender: Any) {
        
        UIPasteboard.general.string = Textlbl.text
               
    }
    
    
   
    

    
    
}
