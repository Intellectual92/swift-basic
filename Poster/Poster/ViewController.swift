//
//  ViewController.swift
//  Poster
//
//  Created by 지성인 on 2020/01/25.
//  Copyright © 2020 Intellectual92. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue:Int = 0
    @IBOutlet weak var bountyLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }

    @IBAction func showAlert(){
        // Add alert
        let message = "현상금은 \(currentValue) 입니다." // Swift는 타입추론이 가능 ex) message:String
        
        let alert = UIAlertController(title:"Hello", message:message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            action in self.refresh()
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func refresh(){
        // 중복코드가 발생하면 메소드를 만들어 중복을 최소화한다.
        let randomNum = arc4random_uniform(100000) + 1
        currentValue = Int(randomNum)
        bountyLabel.text = "₩ \(currentValue)"
    }
}

