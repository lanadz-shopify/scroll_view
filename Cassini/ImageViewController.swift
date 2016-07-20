//
//  ViewController.swift
//  Cassini
//
//  Created by Svitlana Dzyuban on 20/7/16.
//  Copyright © 2016 Lana Dzyuban. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var imageURL: NSURL? {
        didSet {
            image = nil
            fetchImage()
        }
    }

    private func fetchImage() {
        if let url = imageURL {
            if let imageData = NSData(contentsOfURL: url) {
                image = UIImage(data: imageData)
            }
        }
    }

    private var imageView = UIImageView()

    private var image: UIImage? {
        get {
            return imageView.image
        }
        set {
            imageView.image = newValue
            imageView.sizeToFit()
            scrollView?.contentSize = imageView.frame.size
        }
    }
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.contentSize = imageView.frame.size
        }
    }

    @IBAction func changeImage(sender: UITapGestureRecognizer) {
        imageURL = NSURL(string: DemoUrl.cycle())
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        imageURL = NSURL(string: DemoUrl.cycle())

        scrollView.addSubview(imageView)
    }
}

