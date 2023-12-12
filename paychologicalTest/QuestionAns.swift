//
//  QuestionAns.swift
//  paychologicalTest
//
//  Created by stu on 2023/12/10.
//

//import Foundation
//
//struct Question{
//    var question: String
//    var options: [String]
//}
//
//var allQuestionOptions = [
//    Question(question: "1. 他/她是否經常取消約會？", options: ["","A. 從未取消", "B. 偶爾取消，但總是有合理理由", "C. 經常取消，理由讓人懷疑", "D. 經常取消，並且理由荒謬不合理"]),
//
//]

//init(question: String, options: [String]) {
//    self.question = question
//    self.options = options
//}


struct QuestionOptions{
    var question:String
    var options:[String]
    
    init(question: String, options: [String]) {
        self.question = question
        self.options = options
    }
    
}

let allQuestionOption:[QuestionOptions] = [
    QuestionOptions(question: "1. 他/她是否經常取消約會？", options: ["", "A. 從未取消", "B. 偶爾取消，但總是有合理理由", "C. 經常取消，理由讓人懷疑", "D. 經常取消，並且理由荒謬不合理"]),
    QuestionOptions(question: "2. 他/她是否常常對其他異性表示特別的關心？", options: ["", "A. 他只有和我互動", "B. 偶爾對其他人表示關心，但我感到無礙", "C. 他總是對其他異性表示關心，讓我感到不安", "D. 他對其他異性的關心讓我感到明顯不滿"]),
    QuestionOptions(question: "3. 他/她是否經常在不解釋的情況下消失？", options: ["", "A. 從未發生", "B. 有時會突然消失，但總是有解釋", "C. 經常不告而別，讓我感到困擾", "D. 他經常無故消失，讓我感到非常沮喪"]),
    QuestionOptions(question: "4. 他/她是否經常對你的感受不敏感？", options: ["", "A. 他總是很關心我的感受", "B. 有時候可能不夠敏感，但能夠理解", "C. 他經常忽略我的感受，讓我感到受傷", "D. 他對我的感受毫不在意，讓我感到受到冷落"])
]





//func addText() {
//    questionOption1.question = "1. 他/她是否經常取消約會？"
//    questionOption1.options = ["","A. 從未取消", "B. 偶爾取消，但總是有合理理由", "C. 經常取消，理由讓人懷疑", "D. 經常取消，並且理由荒謬不合理"]
//}
    

