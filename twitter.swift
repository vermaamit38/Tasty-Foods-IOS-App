//
//  youtube.swift
//  Tasty Foods
//
//  Created by amitverma on 17/03/17.
//  Copyright © 2017 Amit Verma. All rights reserved.
//


import Foundation

import UIKit
class twitter: UIViewController,UIWebViewDelegate
{
    

    
    @IBOutlet weak var web1: UIWebView!
    @IBOutlet var activity1: UIActivityIndicatorView!
    var url="https://twitter.com/Amitver93474384"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadweb()
    }
    
    
    func loadweb()
    {web1.delegate=self
        web1.scrollView.isScrollEnabled = true
        let requestURL=URL(string:url)
        let request=URLRequest(url: requestURL!)
        web1.loadRequest(request)
        
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        activity1.startAnimating()
        activity1.isHidden=false

    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        activity1.stopAnimating()
        activity1.isHidden=true
    }

    
    
}
