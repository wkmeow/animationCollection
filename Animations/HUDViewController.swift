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
    @IBOutlet weak var third: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    func setupUI(){
        self.container.transform = CGAffineTransform.init(rotationAngle: -0.2)
    }
    
    
    @IBAction func animated(_ sender: Any) {
        
        self.first.transform = CGAffineTransform.init(translationX: -self.first.bounds.width, y: 0)
        self.sec.transform = CGAffineTransform.init(translationX: -self.sec.bounds.width, y: 0)
        UIView.animateKeyframes(withDuration: 1, delay: 0, options: [.repeat]) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5) {
                self.first.transform = CGAffineTransform.identity
            }
            UIView.addKeyframe(withRelativeStartTime: 0.5 , relativeDuration: 0.5) {
                self.sec.transform = CGAffineTransform.identity
            }
        } completion: { (isCompleted) in
            
        }

    }
    
    func firstStep(){
        
        UIView.animate(withDuration: 1) {
            self.first.transform = CGAffineTransform.identity
        } completion: { (success) in
            self.sec.transform = CGAffineTransform.init(translationX: -self.sec.bounds.width, y: 0)
            self.secondStep()
        }

    }
    
    func secondStep(){
        
        UIView.animate(withDuration: 1) {
            self.sec.transform = CGAffineTransform.identity
        } completion: { (success) in
            self.first.transform = CGAffineTransform.init(translationX: -self.first.bounds.width, y: 0)
            self.firstStep()
        }
    }
    
}
