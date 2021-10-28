//
//  TaboolaSDKFramework.swift
//  
//
//  Created by Karen Shaham Palman on 28/10/2021.
//

import UIKit
import TaboolaSDK

class TaboolaSDKFramework: UIViewController, TBLClassicPageDelegate {
    var classicPage: TBLClassicPage?
    var taboolaWidgetPlacement: TBLClassicUnit?
    var taboolaFeedPlacement: TBLClassicUnit?
   
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taboolaInit()
    }
        
    func taboolaInit(){
        classicPage = TBLClassicPage.init(pageType: "mix", pageUrl: "https://www.google.com", delegate: self, scrollView: nil)
    }
}
