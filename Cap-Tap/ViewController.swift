//
//  ViewController.swift
//  Cap-Tap
//
//  Created by Nilrajsinh Vaghela on 18/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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

    @IBAction func Litbtn(_ sender: Any) {
        
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "LIT"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
    }
    
    @IBAction func Attitude(_ sender: Any) {
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Attitude"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
    }
    @IBAction func Sassy(_ sender: Any) {
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Sassy"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
       }
    @IBAction func Girl(_ sender: Any) {
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Girl"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
       }
    @IBAction func savage(_ sender: Any) {
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Savage"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
       }
    @IBAction func Boy(_ sender: Any) {
        
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Boy"))
        self.navigationController?.pushViewController(ngation!, animated: true)
       }
    @IBAction func Lyrics(_ sender: Any) {
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Lyric"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
       }
    @IBAction func Romantic(_ sender: Any) {
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Romantic"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
       }
    @IBAction func Bio(_ sender: Any) {
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Bio"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
       }
    
    
    
    
    @IBAction func Shortbtn(_ sender: Any) {
        
        let ngation = (self.storyboard?.instantiateViewController(withIdentifier: "Short"))
        self.navigationController?.pushViewController(ngation!, animated: true)
        
     
        
    }
    
  
    

}

