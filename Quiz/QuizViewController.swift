//
//  QuizViewController.swift
//  Quiz
//
//  Created by litech on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    //クイズを格納する配列
    var quizArray = [[Any]]()
    
    //正解数
    var correctAnswer: Int = 0
    
    //クイズを表示するTextView
    @IBOutlet var quizTextView: UITextView!
    
    //選択肢のボタン
    @IBOutlet var choiceButtons1: UIButton!
    @IBOutlet var choiceButtons2: UIButton!
    @IBOutlet var choiceButtons3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()//Life is Tech!のロゴTシャツにない色は？
        
        //------------------------ここから下にクイズを書く------------------------//
        quizArray.append(["今回のクリスマスキャンプ、参加人数は何人でしょう？", "約600人", "約1000人", "約700人", 3])
        quizArray.append(["来年2020年の夏のイベントといえば？", "東京オリンピック", "オリンピック", "あるわけないだろ", 1])
         quizArray.append(["のび太のママ「玉子」がやらかしたとんでもないことは？", "卵になった", "のび太の存在を忘れた", "物を盗んだ",2])
         quizArray.append(["2020年何年（干支）でしょうか？", "犬", "亥", "ネズミ", 3])
        quizArray.append(["新型コロナウイルスが流行し始めたのは、いつでしょう？","2019年","2020年","知らん",1])
        quizArray.append(["このクイズはいつ終わるでしょうか？" , "今でしょう！", "つづくだろ！", "うどん食いたい",2])
               quizArray.append(["しゃんぷーおいしい","あばばばば","オいしい","おいしい",3])
               
               quizArray.append(["昨日洗濯機食べたの誰？","自分","ヤスナー", "スマイリー",2])
               
               quizArray.append(["考え中...","問題がないのか","あくだせ","答え",1])
        
    
                
        //------------------------ここから上にクイズを書く------------------------//

        choiceQuiz()
    
    }
    
    func choiceQuiz() {
        quizTextView.text = quizArray[0][0] as? String
        
        //選択肢のボタンにそれぞれ選択肢のテキストをセット
        choiceButtons1.setTitle(quizArray[0][1] as? String, for: .normal)
        choiceButtons2.setTitle(quizArray[0][2] as? String, for: .normal)
        choiceButtons3.setTitle(quizArray[0][3] as? String, for: .normal)
    }
    
    @IBAction func choiceAnswer(sender: UIButton) {
        if quizArray[0][4] as! Int == sender.tag {
            //正解数を増やす
            correctAnswer+=1
        }
        
        quizArray.remove(at: 0)
        //解いた問題数の合計が予め設定していた問題数に達したら結果画面へ
        if quizArray.count == 0 {
            performSegueToResult()
        } else {
            choiceQuiz()
        }
    }
    
    func performSegueToResult() {
        performSegue(withIdentifier: "toResultView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toResultView") {
            
            let resultView = segue.destination as! ResultViewController
            resultView.correctAnswer = self.correctAnswer
        }
    }
}


