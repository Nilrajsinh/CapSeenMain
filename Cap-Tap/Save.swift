//
//  Save.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 11/01/20.
//  Copyright © 2020 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import Firebase
import GoogleMobileAds

class Save: UIViewController,GADBannerViewDelegate {
    
    
    var bannerView: GADBannerView!
    
    
    var ref:DatabaseReference!
    
    
    @IBOutlet weak var Caption: UITextField!
    
    @IBOutlet weak var Category: UITextField!
    
    @IBOutlet weak var ButnDs: UIButton!
    
    @IBAction func SavBtn(_ sender: Any) {
        
        let Cap = [["Caption":Caption.text!,"Category":Category.text!]]
        
        self.ref.child("Caption").setValue(Cap)
        
        
        let alertView = UIAlertController(title: "We just recived your caption", message: "Thank you", preferredStyle: .alert)
            
               
               let okaction = UIAlertAction(title: "Ok", style: .default, handler: nil)
               let cancel = UIAlertAction(title: "Cancle", style: .default, handler: nil)
               
               alertView.addAction(okaction)
       
               
               self.present(alertView, animated: true)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)

           addBannerViewToView(bannerView)
   
        bannerView.adUnitID = "ca-app-pub-8978960658795160/5406398798"
        bannerView.rootViewController = self
         bannerView.load(GADRequest())
         bannerView.delegate = self
        
           ref = Database.database().reference()
        
        ButnDs.layer.cornerRadius = 18
        ButnDs.layer.borderWidth = 3

        // Do any additional setup after loading the view.
    }
    
    func addBannerViewToView(_ bannerView: GADBannerView) {
      bannerView.translatesAutoresizingMaskIntoConstraints = false
      view.addSubview(bannerView)
      view.addConstraints(
        [NSLayoutConstraint(item: bannerView,
                            attribute: .bottom,
                            relatedBy: .equal,
                            toItem: bottomLayoutGuide,
                            attribute: .top,
                            multiplier: 1,
                            constant: 0),
         NSLayoutConstraint(item: bannerView,
                            attribute: .centerX,
                            relatedBy: .equal,
                            toItem: view,
                            attribute: .centerX,
                            multiplier: 1,
                            constant: 0)
        ])
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
