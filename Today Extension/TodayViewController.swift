//
//  TodayViewController.swift
//  Today Extension
//
//  Created by Jan Piotrowski on 4/4/17.
//  Copyright © 2017 Jan Piotrowski. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        
        /*
        let url = URL(string: "https://www.ft.com/");
        let request = URLRequest(url: url!);
        webView.loadRequest(request);
         */
        
        let localfilePath = Bundle.main.url(forResource: "widget", withExtension: "html");
        let myRequest = URLRequest(url: localfilePath!);
        webView.loadRequest(myRequest);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
