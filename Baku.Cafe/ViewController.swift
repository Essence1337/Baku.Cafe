//
//  ViewController.swift
//  Baku.Cafe
//
//  Created by Тимур Кошевой on 31.03.2018.
//  Copyright © 2018 Тимур Кошевой. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController {

    @IBOutlet weak var WebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loadWebView(dataPath: String) {
        WebView.load(URLRequest(url: URL(fileURLWithPath: dataPath)))
    }
    
    func loadViewBaku() {
        WebView.allowsBackForwardNavigationGestures = true
        let url:URL = URL(string: "https://baku.cafe/")!
        let urlRequest:URLRequest = URLRequest(url: url)
        WebView.load(urlRequest)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear( animated)
        loadViewBaku()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
