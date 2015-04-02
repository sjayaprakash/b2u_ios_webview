//
//  ViewController.swift
//  B2U
//
//  Created by Jason Wong on 2/24/15.
//  Copyright (c) 2015 Jason Wong. All rights reserved.
//
 
import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    let url = "http://sjayaprakash.github.io/b2u_webapp/"
    let returnURL = "http://sjayaprakash.github.io/b2u_webapp/profile.html"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let requestURL = NSURL(string: url)
        
        let request = NSMutableURLRequest(URL: requestURL!)
        
        self.edgesForExtendedLayout = UIRectEdge.None
        self.extendedLayoutIncludesOpaqueBars=false
        self.automaticallyAdjustsScrollViewInsets=false

        
        webView.loadRequest(request)
        //webView.scalesPageToFit = true
        //webView.frame = self.view.bounds
        
        
        webView.frame = CGRectMake(0, 10, self.view.frame.size.width, self.view.frame.size.height - 10);

        webView.scrollView.bounces = false
        
        webView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(webView: UIWebView!, didFailLoadWithError error: NSError!) {
        print("Webview fail with error \(error)");
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest r: NSURLRequest, navigationType nt: UIWebViewNavigationType) -> Bool {
        
        let url = r.URL.absoluteString as NSString!
        let ifContains = "https://m.facebook.com/v2.3/dialog/oauth?redirect_uri" as NSString
        
        if(url.containsString(ifContains)) {
            let requestURL = NSURL(string: returnURL)
            let request = NSMutableURLRequest(URL: requestURL!)
            webView.loadRequest(request)
        }

        return true;
    }
    
    func webViewDidStartLoad(webView: UIWebView!) {
        //print("Webview started Loading")
    }
    
    func webViewDidFinishLoad(webView: UIWebView!) {
        //print("Webview did finish load")
    }


}

