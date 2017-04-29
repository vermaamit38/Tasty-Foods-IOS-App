//
//  contact_us.swift
//  Tasty Foods
//
//  Created by amitverma on 17/03/17.
//  Copyright © 2017 Amit Verma. All rights reserved.
//



import UIKit
class contact: UIViewController
{
    @IBOutlet var stack_view_tab: [UIView]!
    {
        didSet{
            stack_view_tab.forEach{
                $0.isHidden = true
            }
        }
    }
    @IBAction func View_tab(_ sender: Any) {
        UIView.animate(withDuration :0.3)
        {
            self.stack_view_tab.forEach{
                $0.isHidden = !$0.isHidden
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
}
