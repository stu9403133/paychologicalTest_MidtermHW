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
    let newTest = allQuestionOptions.shuffled()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateUI()
        
    }
  
    //選擇完選項後，記錄第幾題加1，累積分數，並且更新UI
    @IBAction func chooseOption(_ sender: Any) {
        getScore(sender as! UIButton)
        updateUI()
    }
    
    func updateUI() {
        numberOfTest += 1
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            
            guard self.numberOfTest <= 10 else {
                self.performSegue(withIdentifier: "showScore", sender: nil)
                return
            }
            //問peter為何這樣就要加self
            self.question.text = "\(self.numberOfTest). "+self.newTest[self.numberOfTest].question
            self.option1.text = self.newTest[self.numberOfTest].options[1]
            self.option2.text = self.newTest[self.numberOfTest].options[2]
            self.option3.text = self.newTest[self.numberOfTest].options[3]
            self.option4.text = self.newTest[self.numberOfTest].options[4]
        }
       
    }
    
    func getScore(_ sender: UIButton) {
        switch sender {
        case button1:
            option1.backgroundColor = .red
            score += 1
        case button2:
            option2.backgroundColor = .red
            score += 2
        case button3:
            option3.backgroundColor = .red
            score += 3
        case button4:
            option4.backgroundColor = .red
            score += 4
        default:
            option4.backgroundColor = .red
            score += 0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            self.option1.backgroundColor = .clear
            self.option2.backgroundColor = .clear
            self.option3.backgroundColor = .clear
            self.option4.backgroundColor = .clear
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
