//
//  QuestionViewController.swift
//  paychologicalTest
//
//  Created by stu on 2023/12/10.
//

import UIKit

class QuestionViewController: UIViewController {

    
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var option1: UILabel!
    
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var option2: UILabel!
    
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var option3: UILabel!
    
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var option4: UILabel!
    
    var score = 0
    var numberOfTest = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateUI()
        
    }
    
    @IBAction func getOne(_ sender: Any) {
        score += 1
    }
    @IBAction func getTwo(_ sender: Any) {
        score += 2
    }
    @IBAction func getThree(_ sender: Any) {
        score += 3
    }
    @IBAction func getFour(_ sender: Any) {
        score += 4
    }
    
    
    
    
    
    
    
    
    
    //選擇完選項後，記錄第幾題加1，累積分數，並且更新UI
    @IBAction func chooseOption(_ sender: Any) {
        getScore(sender as! UIButton)
        numberOfTest += 1
        updateUI()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func updateUI() {
        guard numberOfTest < 4 else {
            performSegue(withIdentifier: "showScore", sender: nil)
            return
        }
        question.text = allQuestionOption[numberOfTest].question
        option1.text = allQuestionOption[numberOfTest].options[1]
        option2.text = allQuestionOption[numberOfTest].options[2]
        option3.text = allQuestionOption[numberOfTest].options[3]
        option4.text = allQuestionOption[numberOfTest].options[4]
    }
    
    func getScore(_ sender: UIButton) {
        if sender == button1 {
            score += 1
        } else if sender == button2 {
            score += 2
        }else if sender == button3 {
            score += 3
        }else {
            score += 4
        }
                    
                    
        
        
    }
    
    @IBSegueAction func finishQuestionShowScore(_ coder: NSCoder) -> ResultViewController? {
        let controller = ResultViewController(coder: coder)
        controller?.score = score
        return controller
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
