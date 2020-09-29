//
//  TimeProgressViewController.swift
//  Animations
//
//  Created by Left MacBook Pro 13 on 2020/9/29.
//

import UIKit

class TimeProgressViewController: UIViewController {
    @IBOutlet weak var container: UIView!
    
    @IBOutlet weak var timeProgress: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func animated(){
        self.timeProgress.frame = CGRect.init(x: 0, y: 0, width: 0, height: self.container.bounds.height)
        
        UIView.animate(withDuration: 0.5) {
            self.timeProgress.frame = CGRect.init(x: 0, y: 0, width: self.container.bounds.width/2, height: self.container.bounds.height)
        }
    }
    
    func setupUI(){
        self.container.transform = CGAffineTransform.init(rotationAngle: -0.25)
    }

}
