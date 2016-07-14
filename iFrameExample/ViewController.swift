//
//  ViewController.swift
//  iFrameExample
//
//  Created by David Fekke on 7/13/16.
//  Copyright © 2016 David Fekke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myUIWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var urlStr: NSString = "https://mobilecentral.swyfthub.com/SWY/MobileSiteV1/FrontDashboard.aspx"
        urlStr = urlStr.appending("?clientcode=SWY")
        urlStr = urlStr.appending("&userid=swy.mfitzpatrick&deviceid=31e8689a-f2fa-9b30-0f2d-486eabe1a234")
        urlStr = urlStr.appending("&channel=1")
        urlStr = urlStr.appending("&intertype=1")
        urlStr = urlStr.appending("&location=1")
        urlStr = urlStr.appending("&currlat=0")
        urlStr = urlStr.appending("&currlng=0")
        urlStr = urlStr.appending("&appversion=2.5.14")
        urlStr = urlStr.appending("&platform=Desktop")
        
        let url: NSURL = NSURL(string: urlStr as String)!
        let urlRequest = NSURLRequest(url: url as URL)
        
        myUIWebView.loadRequest(urlRequest as URLRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func shouldAutorotateToInterfaceOrientation(interfaceOrientation: UIInterfaceOrientation) -> Bool {
        return true
    }


}

