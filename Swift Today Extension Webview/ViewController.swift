//
//  ViewController.swift
//  Swift Today Extension Webview
//
//  Created by Jan Piotrowski on 4/4/17.
//  Copyright © 2017 Jan Piotrowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
        let url = URL(string: "https://www.ft.com/");
        let request = URLRequest(url: url!);
        webView.loadRequest(request);
        */
        
        let localfilePath = Bundle.main.url(forResource: "main", withExtension: "html");
        let myRequest = URLRequest(url: localfilePath!);
        webView.loadRequest(myRequest);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

