//
//  WebViewAppt.swift
//  Slug Central
//
//  Created by Ishaan Das on 3/23/22.
//

import SwiftUI
import WebKit


struct WebViewAppt: UIViewRepresentable {
    
        
    
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let wkWebView = WKWebView()
        wkWebView.load(request)
        return wkWebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebViewAppt>) {
        
    }
    
}
