//
//  ResultViewController.swift
//  paychologicalTest
//
//  Created by stu on 2023/12/10.
//

import UIKit

class ResultViewController: UIViewController {

    var score: Int!
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var showScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        // Do any additional setup after loading the view.
    }

    
    func updateUI() {
        if score >= 8 && score <= 16{
            showScore.text = testResult[0]
            resultImage.image = UIImage(named: "result1")
        }else if score >= 17 && score <= 24{
            showScore.text = testResult[1]
            resultImage.image = UIImage(named: "result2")
        }else if score >= 25 && score <= 32{
            showScore.text = testResult[2]
            resultImage.image = UIImage(named: "result3")
        }else{
            showScore.text = testResult[3]
            resultImage.image = UIImage(named: "result4")
        }
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
