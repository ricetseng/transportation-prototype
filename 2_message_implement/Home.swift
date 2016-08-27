//
//  Home.swift
//  2_message_implement
//
//  Created by ricetseng on 2016/8/20.
//  Copyright © 2016年 ricetseng. All rights reserved.
//

import UIKit

class Home: UIViewController {

    @IBOutlet var background_maskView: UIView!
    
    @IBOutlet weak var hamberButton: UIButton!
    
    @IBOutlet weak var itenararyButton: UIButton!
    
    @IBOutlet weak var menuMask: UIView!
    
    @IBOutlet weak var menuPopBg: UIView!
    
    @IBOutlet weak var bikeIc: UIButton!
    @IBOutlet weak var bikeText: UILabel!
    @IBOutlet weak var favoriteIc: UIButton!
    @IBOutlet weak var favoriteText: UILabel!
    @IBOutlet weak var settingIc: UIButton!
    @IBOutlet weak var settingText: UILabel!
    @IBOutlet weak var rateIc: UIButton!
    @IBOutlet weak var rateText: UILabel!
    
    @IBAction func HamberButtonDidPress(sender: AnyObject) {
        //menuMask.hidden = false
        //menuPopBg.hidden = false
        
        /*UIView.animateWithDuration(0.5, animations: {
            self.menuMask.alpha = 1;
            self.menuPopBg.alpha = 1;
        })*/
        menuPopBg.transform = CGAffineTransformMakeTranslation(0, -450)
       
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.8, options: [], animations: {
            
                self.menuMask.alpha = 1;
            
        },completion: nil)

        UIView.animateWithDuration(0.5, delay: 0.3, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: [], animations: {
            
            self.menuPopBg.transform = CGAffineTransformMakeTranslation(0, 0)

            
            },completion: nil)
        
       
        
    }
    @IBAction func closeMenuPop(sender: AnyObject) {
        UIView.animateWithDuration(0.5, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.8, options: [], animations: {
            
            self.menuMask.alpha = 0;
            
            },completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.3, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: [], animations: {
            
            self.menuPopBg.transform = CGAffineTransformMakeTranslation(0, 450)
            
            
            },completion: nil)
        
        }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //menuMask.hidden = true
        //menuPopBg.hidden = true
        menuMask.alpha = 0;
        //menuPopBg.alpha = 0;
        //insertBlurView(menuMask, style: UIBlurEffectStyle.Dark)

        // Do any additional setup after loading the view.
    }


}
