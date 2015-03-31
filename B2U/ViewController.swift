//
//  ViewController.swift
//  B2U
//
//  Created by Jason Wong on 2/24/15.
//  Copyright (c) 2015 Jason Wong. All rights reserved.
//
 
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    let url = "http://sjayaprakash.github.io/b2u_webapp/"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let requestURL = NSURL(string: url)
        
        let request = NSMutableURLRequest(URL: requestURL!)
        /*
        request.setValue("Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/11A465 Twitter for iPhone", forHTTPHeaderField: "User_Agent")*/
        
        /*
        var cookieProperties = NSMutableDictionary()
        cookieProperties.setObject("mobileapp", forKey: NSHTTPCookieName)
        cookieProperties.setObject("1", forKey: NSHTTPCookieValue)
        cookieProperties.setObject("http://google.com", forKey: NSHTTPCookieName)
        cookieProperties.setObject("http://google.com", forKey: NSHTTPCookieOriginURL)
        cookieProperties.setObject("/", forKey: NSHTTPCookiePath)
        cookieProperties.setObject("0", forKey: NSHTTPCookieVersion)
        
        var cookie = NSHTTPCookie(properties: cookieProperties)
        NSHTTPCookieStorage.sharedHTTPCookieStorage().setCookie(cookie!)
        */

        
        webView.loadRequest(request)
        webView.scalesPageToFit = true
        webView.frame = self.view.bounds
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

