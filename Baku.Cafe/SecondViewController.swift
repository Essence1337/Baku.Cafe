//
//  SecondViewController.swift
//  Baku.Cafe
//
//  Created by Тимур Кошевой on 02.04.2018.
//  Copyright © 2018 Тимур Кошевой. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    
    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            // do stuff 2 seconds later
            while CheckInternet.Connection() == false {
                
            }
            self.performSegue(withIdentifier: "segueInternet", sender:nil)
            
        }
        
        

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
