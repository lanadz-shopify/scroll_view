//
//  DemoUrl.swift
//  Cassini
//
//  Created by Svitlana Dzyuban on 20/7/16.
//  Copyright © 2016 Lana Dzyuban. All rights reserved.
//

import Foundation

struct DemoUrl {
    static let currentIndex = 0
    static let TestImages = [
        "http://www.planwallpaper.com/static/images/green-nature-dual-monitor-other_HCGIgKv.jpg",

        "http://vignette2.wikia.nocookie.net/gundam/images/4/42/MSM-03.GIF/revision/latest/scale-to-width-down/300?cb=20120615042732",

        "http://www.planwallpaper.com/static/images/4-Nature-Wallpapers-2014-1_ukaavUI.jpg",

        "http://www.planwallpaper.com/static/images/nature5_7kRqw1z.jpg",

        "http://www.planwallpaper.com/static/images/nature1_gkmUB5J.jpg"
    ]

    static func cycle() -> String {
        let index = Int(arc4random_uniform(UInt32(TestImages.count)))
        return TestImages[index]
    }
}
