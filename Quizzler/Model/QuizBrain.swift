import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Gravity = 重力", a: "True"),
        Question(q: "Contract = 契約書", a: "True"),
        Question(q: "Select = 選択", a: "True"),
        Question(q: "Hire = 応募", a: "True"),
        Question(q: "Knowledge = 残酷", a: "False"),
        Question(q: "Delivery = 配達", a: "True"),
        Question(q: "Appreciate = 怒り", a: "False"),
        Question(q: "Celebrate = 祝い", a: "True"),
        Question(q: "Complicated = 複雑", a: "True"),
        Question(q: "Amusing = 音楽", a: "False"),
        Question(q: "Light = 右", a: "False"),
        Question(q: "Bored = 退屈", a: "True")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

