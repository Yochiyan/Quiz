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
    @IBOutlet var resultLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      if correctAnswer == 0{
                 resultLabel2.text = "0/9"
                
         
            }else if correctAnswer == 1{
                       resultLabel2.text = "1/9"
            }else if correctAnswer == 2{
                       resultLabel2.text = "2/9"
            }else if correctAnswer == 3{
                     resultLabel2.text = "3/9"
        } else if correctAnswer == 4 {
                    resultLabel2.text =  "4/9"
                } else if correctAnswer == 5{
                resultLabel2.text =  "5/9"
            } else if correctAnswer == 6{
                 resultLabel2.text =  "6/9"
                
                } else if correctAnswer == 7{
                 resultLabel2.text = "7/9"
                
                } else if correctAnswer == 8{
                    resultLabel2.text = "8/9"
                    
                } else if correctAnswer == 9{
                    resultLabel2.text = "9/9"
        
        
//
//
//        // Do any additional setup after loading the view.
//        resultLabel.text = "\(correctAnswer)"

    }
    
}
}
