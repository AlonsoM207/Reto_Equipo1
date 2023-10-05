//
//  QuizManager.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 05/10/23.
//

import Foundation

class QuizManager: ObservableObject{
    
    @Published var questions = [Question]()
    
    @Published var mockQuestion = [
        Question(title: " ¿Qué vehiculo representa la seña? ", answer: "A", options: ["A", "B", "C", "D"]),
        Question(title: " ¿Qué lugar representa la seña? ", answer: "A", options: ["A", "B", "C", "D"]),
        Question(title: " ¿Qué letra representa la seña? ", answer: "A", options: ["A", "B", "C", "D"]),
        Question(title: " ¿Que numero representa la seña? ", answer: "A", options: ["A", "B", "C", "D"])
    ]
    
    
    
    func canSubmitQuiz() -> Bool {
        return mockQuestion.filter({ $0.selection == nil }).isEmpty
    }
    
    func gradeQuiz() -> String{
        var corrrect: CGFloat = 0
        for question in mockQuestion {
            if question.answer == question.selection{
                corrrect += 1
            }
        }
        return "\((corrrect/CGFloat(mockQuestion.count)) * 100) %"
    }
}

