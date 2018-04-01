//
//  ViewController.swift
//  Baku.Cafe
//
//  Created by Тимур Кошевой on 31.03.2018.
//  Copyright © 2018 Тимур Кошевой. All rights reserved.
//

import UIKit
import WebKit
import Messages

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
        
        if CheckInternet.Connection(){

            
            
        }else{
            
        self.Alert(Message: "No Internet")
    
            
        }
        
    }
    
    func Alert(Message: String) {
        let alert = UIAlertController(title: "Alert", message: Message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
