//
//  QuizViewController.swift
//  Quiz
//
//  Created by litech on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class QuizViewController2: UIViewController {
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
    @IBOutlet var choiceButtons4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()//Life is Tech!のロゴTシャツにない色は？
        
        //------------------------ここから下にクイズを書く------------------------//
        quizArray.append(["聖徳太子のお供は誰？", "蘇我馬子", "小野妹子", "中大兄皇子", "藤原不比等", 2])
        quizArray.append(["聖徳太子の小さい頃の夢は？", "エンジニア", "YouTuber", "国家体制の確立", "消防士", 1])
         quizArray.append(["最近聖徳太子が影で「妹子と〇〇は仲良し」と言った。それは何か。", "ブリ", "サケ", "クマ","ツナ",2])
         quizArray.append(["遣隋使で隋の国王と顔を合わせたが相手の見た目はなんだったか。", "🐙", "👤", "🐈", "🐅", 1])
        quizArray.append(["聖徳太子の必殺技を答えてください。","飛鳥文化アタック","摂政チョップ","憲法十七条ちゃぶ台返し", "湯呑みマッスルアタック",1,2,4])
        quizArray.append(["妹子が法隆寺に遊びに来た時、聖徳太子にあげたお土産を挙げてください。" , "人形", "しゃもじ", "石と草", "湯呑み",3])
               quizArray.append(["ここで歴史上の聖徳太子の本名をお答えください。","瀬戸大橋","宇多田ヒカル","厩戸皇子", "西郷隆盛",3])
               
               quizArray.append(["「聖徳太子の楽しい木造建築」で登場するお菓子、「聖徳サブレ」の箱の左に書いてあるものは？","それともワタシ？","ウマイッ！", "聖徳ッキング", "聖徳太子も食べたいし",4])
               
               quizArray.append(["法隆寺を建てる時ケチって建設員1人しか雇わなかった。建築にあと何年かかることになったか。","5年","25年","55年", "1年",2])
               
        
    
                
        //------------------------ここから上にクイズを書く------------------------//

        choiceQuiz()
    
    }
    
    func choiceQuiz() {
        quizTextView.text = quizArray[0][0] as? String
        
        //選択肢のボタンにそれぞれ選択肢のテキストをセット
        choiceButtons1.setTitle(quizArray[0][1] as? String, for: .normal)
        choiceButtons2.setTitle(quizArray[0][2] as? String, for: .normal)
        choiceButtons3.setTitle(quizArray[0][3] as? String, for: .normal)
        choiceButtons4.setTitle(quizArray[0][4] as? String, for: .normal)
    }
    
    @IBAction func choiceAnswer(sender: UIButton) {
        if quizArray[0][5] as! Int == sender.tag {
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
            
            let resultView = segue.destination as! ResultViewController2
            resultView.correctAnswer = self.correctAnswer
        }
    }
}



