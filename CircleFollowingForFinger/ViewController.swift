//
//  ViewController.swift
//  CircleFollowingForFinger
//
//  Created by Alexander Kononok on 10/4/20.
//

import UIKit

class ViewController: UIViewController {

  var circle: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let sideRect: CGFloat = 100
    
    circle = UIView()
    circle.frame = CGRect(x: 0, y: 0, width: sideRect, height: sideRect)
    circle.layer.cornerRadius = CGFloat(sideRect / 2)
    circle.center.x = view.frame.width / 2
    circle.center.y = view.frame.height / 2
    circle.backgroundColor = .purple
    
    view.addSubview(circle)
    
    let panGestureRecognize = UIPanGestureRecognizer(target: self, action: #selector(processPan(_:)))
    view.addGestureRecognizer(panGestureRecognize)
  }
  
  @objc func processPan(_ panGesture: UIPanGestureRecognizer) {
    let coord = panGesture.location(in: view)
    circle.center.x = coord.x
    circle.center.y = coord.y
  }
  
}

