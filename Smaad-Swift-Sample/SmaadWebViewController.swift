//
//  WebViewController.swift
//  Smaad-Swift-Sample
//
//  Created by 川村拓也 on 2024/04/08.
//

import UIKit
import WebKit
import smaad_swift_sdk

class SmaadWebViewController: UIViewController, SmaadWKWebViewDelegate {
    // Declare the webView property directly
    var webView: SmaadWKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create an instance of SmaadWKWebView
        let webViewConfigulation = WKWebViewConfiguration()
        webView = SmaadWKWebView(frame: .zero, configuration: webViewConfigulation)
        webView.smaadDelegate = self
        
        // Set autoresizing to match the view's bounds
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        webView.frame = self.view.bounds

        // Add the webView to the view hierarchy
        self.view.addSubview(webView)
        
        // Initialize the WebView
        webView.initializeWebView(770558503, userParameter: "test")
    }
    
    // MARK: - SmaadWKWebViewDelegate methods
    func webViewDidStartLoading(_ url: String) {
        print("StartLoading Url = \(url)")
    }

    func webViewDidRedirectUrlLoading(_ url: String) {
        print("Redirect URL: \(url)")
    }

    func webViewDidFinishLoading(_ url: String) {
        print("Finished URL: \(url)")
    }

    func webViewDidFailProvisionalError(_ description: String, failingUrl: String) {
        print("Error: \(description), URL: \(failingUrl)")
    }

    func onClosedWebView() {
        print("onClosedWebView")
        // Close the WebView and the ViewController
        DispatchQueue.main.async {
            self.dismiss(animated: true, completion: nil)
        }
    }
}
