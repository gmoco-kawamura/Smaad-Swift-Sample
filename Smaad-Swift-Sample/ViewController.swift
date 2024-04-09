//
//  ViewController.swift
//  Smaad-Swift-Sample
//
//  Created by 川村拓也 on 2024/04/08.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showWebView(_ sender: Any) {
        // Generate an instance of WebViewController using the Storyboard ID
        if let smaadWebViewController = storyboard?.instantiateViewController(withIdentifier: "WebViewControllerID") as? SmaadWebViewController {
            // Set to present in full screen
            smaadWebViewController.modalPresentationStyle = .fullScreen
            
            // Present the WebViewController
            present(smaadWebViewController, animated: true, completion: nil)
        }
    }
}
