//
//  ViewController.swift
//  Cap-Tap
//
//  Created by Nilrajsinh Vaghela on 18/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, GADBannerViewDelegate , GADInterstitialDelegate {
    
      var bannerView: GADBannerView!
     var interstitial: GADInterstitial!

    @IBOutlet weak var Lit: UIButton!
    @IBOutlet weak var Attdude: UIButton!
    @IBOutlet weak var Sassy: UIButton!
    @IBOutlet weak var Savage: UIButton!
    @IBOutlet weak var Girl: UIButton!
    @IBOutlet weak var short: UIButton!
    @IBOutlet weak var lyric: UIButton!
    @IBOutlet weak var romantic: UIButton!
    @IBOutlet weak var bio: UIButton!
    
    @IBOutlet weak var boy: UIButton!
    
    
    override func viewDidLoad() {
        
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)

           addBannerViewToView(bannerView)
        bannerView.adUnitID = "ca-app-pub-8978960658795160/5406398798"
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-8978960658795160/2397092070")
        
         bannerView.rootViewController = self
        bannerView.load(GADRequest())
        bannerView.delegate = self
        let request = GADRequest()
           interstitial.load(request)
         interstitial = createAndLoadInterstitial()
        interstitial.delegate = self
        
        
        
        super.viewDidLoad()
    
        Lit.layer.cornerRadius = 20
        Lit.layer.borderWidth = 4.0;
        
        
        Attdude.layer.cornerRadius = 20
        Attdude.layer.borderWidth = 4.0;
        
        Sassy.layer.cornerRadius = 20
        Sassy.layer.borderWidth = 4.0;
        
        Savage.layer.cornerRadius = 20
        Savage.layer.borderWidth = 4.0;
        
        Girl.layer.cornerRadius = 20
        Girl.layer.borderWidth = 4.0;
        
        boy.layer.cornerRadius = 20
        boy.layer.borderWidth = 4.0;
        
        short.layer.cornerRadius = 20
        short.layer.borderWidth = 4.0;
        
        lyric.layer.cornerRadius = 20
        lyric.layer.borderWidth = 4.0;
        
        romantic.layer.cornerRadius = 20
        romantic.layer.borderWidth = 4.0;
        
        bio.layer.cornerRadius = 20
        bio.layer.borderWidth = 4.0;
        
        
        
        // Do any additional setup after loading the view.
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

    @IBAction func Litbtn(_ sender: Any) {
        
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "LIT"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
    }
    
    @IBAction func Attitude(_ sender: Any) {
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Attitude"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
    }
    @IBAction func Sassy(_ sender: Any) {
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Sassy"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
       }
    @IBAction func Girl(_ sender: Any) {
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Girl"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
       }
    @IBAction func savage(_ sender: Any) {
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Savage"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
       }
    @IBAction func Boy(_ sender: Any) {
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Boy"))
        self.navigationController?.pushViewController(ngation!, animated: true)
       }
    @IBAction func Lyrics(_ sender: Any) {
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Lyric"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
       }
    @IBAction func Romantic(_ sender: Any) {
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Romantic"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
       }
    @IBAction func Bio(_ sender: Any) {
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Bio"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
       }
    
    
    
    
    @IBAction func Shortbtn(_ sender: Any) {
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        
        
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Short"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
     
        
    }
    
    
    
    @IBAction func Infobtn(_ sender: Any) {
        
        let alertView = UIAlertController(title: "Touch on any caption to copy", message: nil, preferredStyle: .alert)
        
        let okaction = UIAlertAction(title: "Ok", style: .default, handler: nil)
       
        
        alertView.addAction(okaction)
       
        
        self.present(alertView, animated: true)
    }
    
  
    

}

