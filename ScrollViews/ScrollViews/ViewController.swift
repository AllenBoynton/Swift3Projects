//
//  ViewController.swift
//  ScrollViews
//
//  Created by Allen Boynton on 4/13/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.


import UIKit

class ViewController: UIViewController, UIScrollViewDelegate, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Swipe Gesture Recognizers
//        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
//        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
//        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
//        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
//        
//        // ViewController will be the delegate for the left and right swipes
//        swipeRight.delegate = self
//        swipeLeft.delegate = self
//        
//        self.view.addGestureRecognizer(swipeRight)
//        self.view.addGestureRecognizer(swipeLeft)
    }
    
//    // here are those protocol methods with Swift syntax
//    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
//        return true
//    }
//    
//    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
//        return true
//    }
//    
//    // Debugging - All Swipes Are Detected Now
//    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
//        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
//            switch swipeGesture.direction {
//            case UISwipeGestureRecognizerDirection.right:
//                print("Swiped right")
//            case UISwipeGestureRecognizerDirection.left:
//                print("Swiped left")
//            default:
//                break
//            }
//        }
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width
        
        // For-in loop
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 100, width: 150, height: 150)
        }
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }
}

