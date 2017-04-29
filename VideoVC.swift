//
//  VideoVC.swift
//  Tasty Foods
//
//  Created by amitverma on 22/02/17.
//  Copyright © 2017 Amit Verma. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView:UIWebView!
    private var _partyRock:PartyRock!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    var partyRock:PartyRock
    {
        get{
            return _partyRock
            }
        set{
            _partyRock=newValue
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       titleLabel.text=partyRock.videoTitle
        
        webView.loadHTMLString("<iframe width=\"\(webView.frame.width)\" height=\"\(webView.frame.height)\" src=\"\(partyRock.videoURL)?wmode=opaque&amp?modestbranding=1&amp;title=&amp;rel=0&amp;autohide=1&amp;showinfo=0&amp;wmode=transparent;controls=2\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
        
        background_colour()

    }
    func background_colour()->Void{
        let topColor=UIColor(red:(15/255.0),green:(118/225.0),blue:(128/255.0),alpha:1)
        let bottomColor=UIColor(red:(84/255.0),green:(187/225.0),blue:(187/255.0),alpha:1)
        
        let gradientColors:[CGColor]=[topColor.cgColor,bottomColor.cgColor]
        let gradientLocations:[Float]=[0.0,1.0]
        
        let gradientLayer:CAGradientLayer=CAGradientLayer()
        gradientLayer.colors=gradientColors
        gradientLayer.locations=gradientLocations as [NSNumber]?
        
        gradientLayer.frame=self.view.bounds
        self.view.layer.insertSublayer(gradientLayer,at: 0)
    }

    
   
}
