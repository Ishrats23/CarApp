//
//  AnimationViewController.swift
//  CarAppByIshrat
//
//  Created by Default User on 2/14/25.
//

import UIKit


class AnimationViewController: UIViewController {
    
      var fadeRotateLayer: CALayer?

     
      @IBOutlet weak var carImage1: UIImageView!
      @IBOutlet weak var carImage2: UIImageView!

      override func viewDidLoad() {
          super.viewDidLoad()
          
          
          slideShowCar()
          
        
         fadeAndRotateCar()
      }

    
      func slideShowCar() {
          
          let carImages = [
              UIImage(named: "car1.jpeg"),
              UIImage(named: "car2.jpeg"),
              UIImage(named: "car3.jpeg"),
              UIImage(named: "car4.jpeg"),
              UIImage(named: "car5.jpg")
          ].compactMap { $0 }

         
          carImage1.animationImages = carImages
          carImage1.animationDuration = 5.0
          carImage1.animationRepeatCount = 0
          carImage1.startAnimating()
      }


    func fadeAndRotateCar() {
      
            carImage2.image = UIImage(named: "car6.png")
            
          
            let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
            rotateAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
            rotateAnimation.fromValue = 0
            rotateAnimation.toValue = 2 * Double.pi
            rotateAnimation.isRemovedOnCompletion = false
            rotateAnimation.duration = 1.0
            rotateAnimation.repeatCount = .infinity
            carImage2.layer.add(rotateAnimation, forKey: "rotateAnimation")
            
            
            let fadeAnimation = CABasicAnimation(keyPath: "opacity")
            fadeAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
            fadeAnimation.fromValue = NSNumber(value: 1.0)
            fadeAnimation.toValue = NSNumber(value: 0.0)
            fadeAnimation.isRemovedOnCompletion = false
            fadeAnimation.duration = 3.0
            fadeAnimation.beginTime = 1.0
            fadeAnimation.autoreverses = true
            fadeAnimation.fillMode = .both
            fadeAnimation.repeatCount = .infinity
            carImage2.layer.add(fadeAnimation, forKey: "fadeAnimation")
        }

}
