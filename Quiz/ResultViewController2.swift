//
//  ResultViewController2.swift
//  Quiz
//
//  Created by よっちゃん on 2024/08/04.
//  Copyright © 2024 LifeisTech. All rights reserved.
//

import UIKit

class ResultViewController2: UIViewController {
    var correctAnswer:Int = 0
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      if correctAnswer == 0{
                 resultLabel.text = "0/9"
                
         
            }else if correctAnswer == 1{
                       resultLabel.text = "1/9"
            }else if correctAnswer == 2{
                       resultLabel.text = "2/9"
            }else if correctAnswer == 3{
                     resultLabel.text = "3/9"
        } else if correctAnswer == 4 {
                    resultLabel.text =  "4/9"
                } else if correctAnswer == 5{
                resultLabel.text =  "5/9"
            } else if correctAnswer == 6{
                 resultLabel.text =  "6/9"
                
                } else if correctAnswer == 7{
                 resultLabel.text = "7/9"
                
                } else if correctAnswer == 8{
                    resultLabel.text = "8/9"
                    
                } else if correctAnswer == 9{
                    resultLabel.text = "9/9"
        
        
//
//
//        // Do any additional setup after loading the view.
//        resultLabel.text = "\(correctAnswer)"

    }
    
}
}
