//
//  homeView.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 09/01/20.
//  Copyright © 2020 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit

class homeView: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    
      var Cetgory = [
        ["Title":"Attitude","Image":#imageLiteral(resourceName: "Attitude"),"Controller":"Attitude"],
          ["Title":"Sassy","Controller":"Sassy","Image":#imageLiteral(resourceName: "Sassy")],
          ["Title":"Girl","Controller":"Girl","Image":#imageLiteral(resourceName: "Girl")],
          ["Title":"Savage","Controller":"Savage","Image":#imageLiteral(resourceName: "Savage")],
          ["Title":"Boy","Controller":"Boy","Image":#imageLiteral(resourceName: "boy")],
          ["Title":"Lit","Controller":"LIT","Image":#imageLiteral(resourceName: "Lit")],
          ["Title":"Bio","Controller":"Bio","Image":#imageLiteral(resourceName: "Attitude")],
          ["Title":"Romantic","Controller":"Romantic","Image":#imageLiteral(resourceName: "Attitude")],
          ["Title":"Lyrics","Controller":"Lyric","Image":#imageLiteral(resourceName: "Lyrics")],
          ["Title":"Dog","Controller":"dog","Image":#imageLiteral(resourceName: "Dog")],
          ["Title":"Selfie","Controller":"Selfie","Image":#imageLiteral(resourceName: "Attitude")],
          ["Title":"Food","Controller":"Food","Image":#imageLiteral(resourceName: "Food")],
          ["Title":"Fitness","Controller":"Fitness","Image":#imageLiteral(resourceName: "Fitness")],
          ["Title":"Funny", "Controller":"Funny","Image":#imageLiteral(resourceName: "Funny")],
          ["Title":"Inspirational", "Controller":"Inspirational","Image":#imageLiteral(resourceName: "Insp")],
          ["Title":"Life", "Controller":"Life","Image":#imageLiteral(resourceName: "Life")],
          ["Title":"Success", "Controller":"Success","Image":#imageLiteral(resourceName: "Success")],
          ["Title":"Birthday", "Controller":"Birthday","Image":#imageLiteral(resourceName: "Birthday")],
          ["Title":"Season", "Controller":"Season","Image":#imageLiteral(resourceName: "Season")],
          ["Title":"Travel", "Controller":"Travel","Image":#imageLiteral(resourceName: "Travel")],
          ["Title":"Heartbreak", "Controller":"Heartbreak","Image":#imageLiteral(resourceName: "Attitude")],
          ["Title":"Sad", "Controller":"Sad","Image":#imageLiteral(resourceName: "Attitude")],
          ["Title":"Beach", "Controller":"Beach","Image":#imageLiteral(resourceName: "Beach")],
          ["Title":"Couple", "Controller":"Couple","Image":#imageLiteral(resourceName: "Couple")],
          ["Title":"Friends", "Controller":"Friends","Image":#imageLiteral(resourceName: "Attitude")],
          ["Title":"#hashtag", "Controller":"Hashtag","Image":#imageLiteral(resourceName: "Attitude")]
    
      ]
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Cetgory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! HomeCell
        cell.CIMG.image = Cetgory[indexPath.row]["Image"] as! UIImage
        cell.Title.text = Cetgory[indexPath.row]["Title"] as! String
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//          let controller = self.storyboard?.instantiateViewController(withIdentifier: Cetgory[indexPath.row]["Controller"]!)
//              self.navigationController?.pushViewController(controller!, animated: true)
 
        let navigation = self.storyboard?.instantiateViewController(withIdentifier: Cetgory[indexPath.item]["Controller"] as! String)
        self.navigationController?.pushViewController(navigation!, animated: true)
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
