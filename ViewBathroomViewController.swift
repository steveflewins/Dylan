//
//  ViewBathroomViewController.swift
//  Dylan
//
//  Created by steve personal on 11/24/16.
//  Copyright © 2016 steve personal. All rights reserved.
//

import UIKit

import AVFoundation



class ViewBathroomViewController: UIViewController {
    
    var vehicle: String!
    
    var player: AVAudioPlayer?

    @IBOutlet weak var play_sound: UIButton!
    
    @IBOutlet weak var car_bw: UIImageView!
    
    @IBOutlet weak var car_blue: UIImageView!
   
    
    @IBOutlet weak var car_red: UIImageView!
    
    @IBOutlet weak var vehicle_name: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        car_blue.isHidden = true
        car_red.isHidden = true
        
        vehicle_name.text = vehicle
        
        //   blue_car.isHidden = true
        
        /*
         let url = Bundle.main.url(forResource: "vermell", withExtension: "mp3")!
         
         do {
         player = try AVAudioPlayer(contentsOf: url)
         guard let player = player else { return }
         
         //     player.prepareToPlay()
         //  player.play()
         }
         
         catch let error {
         print(error.localizedDescription)
         }
         */
        
        
        
        
        // Do any additional setup after loading the view.
        // lbl_incorrect.isHidden = true
        //lbl_bravo.isHidden = true
        //img_boat_red.isHidden = true
        //lbl_mes.isHidden = true
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
       
    
    @IBAction func play_sound(_ sender: UIButton) {
        
        
        let url = Bundle.main.url(forResource: "blau", withExtension: "mp3")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        }
            
        catch let error {
            print(error.localizedDescription)
        }
        
    }
    
    @IBAction func blue_bucket(_ sender: UIButton) {
        
        car_blue.isHidden = false
        car_bw.isHidden = true
        car_red.isHidden = true
    }

    @IBAction func red_bucket(_ sender: UIButton) {
        
        car_blue.isHidden = true
        car_bw.isHidden = true
        car_red.isHidden = false
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
/*
    
    @IBAction func red_select(_ sender: UIButton) {
        lbl_incorrect.isHidden = true
        lbl_red.titleLabel?.textColor = UIColor.red
        lbl_yellow.isHidden = true
        lbl_blue.isHidden = true
        lbl_orange.isHidden = true
        img_boat_red.isHidden = false
        lbl_bravo.isHidden = false
        
 
        let url = Bundle.main.url(forResource: "bravo", withExtension: "mp3")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        }
            
        catch let error {
            print(error.localizedDescription)
        }
    }

*/

    
    
    
}
