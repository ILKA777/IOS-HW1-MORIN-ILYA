//
//  ViewController.swift
//  iomorinPW1
//
//  Created by Илья Морин on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var views: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeColorButtonPressed(_ sender: Any) {
        var set = Set<UIColor>()
        while set.count < views.count {
            set.insert(
                UIColor(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1),
                    alpha: 1))
        }
        
        func getRandomRadius() -> CGFloat {
            CGFloat.random(in: 0 ... 55)
        }
        
        let button = sender as? UIButton
        //button?.isEnabled = false
        button?.isEnabled = true
        UIView.animate(withDuration: 2, animations: {
            for view in self.views {
                view.layer.cornerRadius = getRandomRadius()
                view.backgroundColor = set.popFirst()
            }
        })
        
        
    }
    
}

