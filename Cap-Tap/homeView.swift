//
//  homeView.swift
//  CapSeen
//
//  Created by Nilrajsinh Vaghela on 09/01/20.
//  Copyright © 2020 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class homeView: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,GADInterstitialDelegate,GADBannerViewDelegate {
    
       var bannerView: GADBannerView!
         var interstitial: GADInterstitial!
    
      var Cetgory = [
        ["Title":"Attitude","Image":#imageLiteral(resourceName: "Attitude"),"Controller":"Attitude"],
          ["Title":"Sassy","Controller":"Sassy","Image":#imageLiteral(resourceName: "Sassy")],
          ["Title":"Girl","Controller":"Girl","Image":#imageLiteral(resourceName: "Girl")],
          ["Title":"Savage","Controller":"Savage","Image":#imageLiteral(resourceName: "Savage")],
          ["Title":"Boy","Controller":"Boy","Image":#imageLiteral(resourceName: "boy")],
          ["Title":"Lit","Controller":"LIT","Image":#imageLiteral(resourceName: "Lit")],
          ["Title":"Bio","Controller":"Bio","Image":#imageLiteral(resourceName: "BIO")],
          ["Title":"Romantic","Controller":"Romantic","Image":#imageLiteral(resourceName: "Romantic")],
          ["Title":"Lyrics","Controller":"Lyric","Image":#imageLiteral(resourceName: "Lyrics")],
          ["Title":"Dog","Controller":"dog","Image":#imageLiteral(resourceName: "Dog")],
          ["Title":"Selfie","Controller":"Selfie","Image":#imageLiteral(resourceName: "minions-taking-a-selfie_2880x1800_xtrafondos.com")],
          ["Title":"Food","Controller":"Food","Image":#imageLiteral(resourceName: "FooM")],
          ["Title":"Fitness","Controller":"Fitness","Image":#imageLiteral(resourceName: "Fitness")],
          ["Title":"Funny", "Controller":"Funny","Image":#imageLiteral(resourceName: "Funny")],
          ["Title":"Inspirational", "Controller":"Inspirational","Image":#imageLiteral(resourceName: "Insp")],
          ["Title":"Life", "Controller":"Life","Image":#imageLiteral(resourceName: "Life")],
          ["Title":"Success", "Controller":"Success","Image":#imageLiteral(resourceName: "Success")],
          ["Title":"Birthday", "Controller":"Birthday","Image":#imageLiteral(resourceName: "Birthday")],
          ["Title":"Season", "Controller":"Season","Image":#imageLiteral(resourceName: "Season")],
          ["Title":"Travel", "Controller":"Travel","Image":#imageLiteral(resourceName: "Travel")],
          ["Title":"Heartbreak", "Controller":"Heartbreak","Image":#imageLiteral(resourceName: "HeartBreak")],
          ["Title":"Sad", "Controller":"Sad","Image":#imageLiteral(resourceName: "Sad")],
          ["Title":"Beach", "Controller":"Beach","Image":#imageLiteral(resourceName: "Beach")],
          ["Title":"Couple", "Controller":"Couple","Image":#imageLiteral(resourceName: "Romant")],
          ["Title":"Friends", "Controller":"Friends","Image":#imageLiteral(resourceName: "Friends")],
          ["Title":"#hashtag", "Controller":"Hashtag","Image":#imageLiteral(resourceName: "Hashtag")]
    
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
        
        if interstitial.isReady {
                               interstitial.present(fromRootViewController: self)
                             }
        
 
        let navigation = self.storyboard?.instantiateViewController(withIdentifier: Cetgory[indexPath.item]["Controller"] as! String)
        self.navigationController?.pushViewController(navigation!, animated: true)
        
        
    }
    
    
 
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)

                 addBannerViewToView(bannerView)
         
              bannerView.adUnitID = "ca-app-pub-8978960658795160/5406398798"
              bannerView.rootViewController = self
               bannerView.load(GADRequest())
               bannerView.delegate = self
        

        
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-8978960658795160/2397092070")
                     let request = GADRequest()
                     interstitial.load(request)
                     interstitial = createAndLoadInterstitial()
                      interstitial.delegate = self
        
        
        // Do any additional setup after loading the view.
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
