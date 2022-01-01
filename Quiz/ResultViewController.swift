//
//  ResultViewController.swift
//  Quiz
//
//  Created by litech on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var correctAnswer:Int = 0
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      if correctAnswer == 0{
                 resultLabel.text = "おおおおお０問"
                
         
            }else if correctAnswer == 1{
                       resultLabel.text = "いいいい１問"
            }else if correctAnswer == 2{
                       resultLabel.text = "頑張れ！２問"
            }else if correctAnswer == 3{
                     resultLabel.text = "頑張れ！３問"
        } else if correctAnswer == 4 {
                    resultLabel.text =  "???　かなり恐怖を感じた。４問"
                } else if correctAnswer == 5{
                resultLabel.text =  "??? 共感した。５問"
            } else if correctAnswer == 6{
                 resultLabel.text =  "??? 共感した。６問"
                
                } else if correctAnswer == 7{
                 resultLabel.text = "惜しい！７問"
                
                } else if correctAnswer == 8{
                 resultLabel.text = "全問正解!!"
        
        
//
//
//        // Do any additional setup after loading the view.
//        resultLabel.text = "\(correctAnswer)"

    }
    
}
}
