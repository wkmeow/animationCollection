//
//  HUDViewController.swift
//  Animations
//
//  Created by Left MacBook Pro 13 on 2020/9/29.
//

import UIKit

class HUDViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    @IBOutlet weak var first: UIImageView!
    
    @IBOutlet weak var sec: UIImageView!
    var images:[UIImage]!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    func setupUI(){
        self.container.transform = CGAffineTransform.init(rotationAngle: -0.2)
//        self.first.image = UIImage.init(named: "image_\(2)")
    }
    
    
    @IBAction func animated(_ sender: Any) {
        
        self.first.transform = CGAffineTransform.init(translationX: -self.first.bounds.width, y: 0)
        self.sec.transform = CGAffineTransform.init(translationX: -self.sec.bounds.width, y: 0)
        let duration = 2.0
        let mutiple = 0.8
        UIView.animateKeyframes(withDuration: duration, delay: 0, options: [.repeat,.calculationModeCubic]) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: mutiple/duration) {
                self.first.transform = CGAffineTransform.identity
            }
            UIView.addKeyframe(withRelativeStartTime: 1/duration , relativeDuration: mutiple/duration) {
                self.sec.transform = CGAffineTransform.identity
            }
        } completion: { (isCompleted) in
            
        }
    }
}
