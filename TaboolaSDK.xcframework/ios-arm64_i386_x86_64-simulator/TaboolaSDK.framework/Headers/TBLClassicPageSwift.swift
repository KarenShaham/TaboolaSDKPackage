//
//  TBLClassicPageSwift.swift
//  TaboolaSDK
//
//  Created by Karen Shaham Palman on 27/10/2021.
//  Copyright © 2021 Taboola. All rights reserved.
//

import Foundation

class TBLClassicPageSwift {
    var targetType: String?
    var pageId: String?
    var pageExtraProperties: NSDictionary?
    
    
    func initWith(pageType: NSString, pageUrl: NSString, delegate: TBLClassicPageDelegate, scrollView: UIScrollView) -> TBLClassicPage {
        var page: TBLClassicPage?
        page = TBLClassicPage.init(pageType: pageType as String, pageUrl: pageUrl as String, delegate: delegate, scrollView: scrollView)
        return page ?? TBLClassicPage()
    }
}
