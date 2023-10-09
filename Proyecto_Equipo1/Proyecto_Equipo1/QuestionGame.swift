//
//  QuestionGame.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 18/09/23.
//

import SwiftUI

class QuizManager: ObservableObject{
    
    @Published var mockQuestion = [
        Question(title: " ¿Qué vehiculo representa la seña? ", answer: "A", options: ["A", "B", "C", "D"]),
        Question(title: " ¿Qué lugar representa la seña? ", answer: "A", options: ["A", "B", "C", "D"]),
        Question(title: " ¿Qué letra representa la seña? ", answer: "A", options: ["A", "B", "C", "D"]),
        Question(title: " ¿Que numero representa la seña? ", answer: "A", options: ["A", "B", "C", "D"])
    ]
    
    func canSubmitQuiz() -> Bool {
        return mockQuestion.filter({ $0.selection == nil}).isEmpty
    }
}

struct QuestionGame: View {
    @StateObject var manager = QuizManager()
    
    var body: some View {
        TabView{
            ForEach(manager.mockQuestion.indices, id: \.self){ index in
                VStack {
                    Spacer()
                    QuestionView(question: $manager.mockQuestion[index])
                    Spacer()
                    
                    if let lastQuestion = manager.mockQuestion.last,                       lastQuestion.id == manager.mockQuestion[index].id {
                        
                        Button{
                            print(manager.canSubmitQuiz())
                        } label: {
                            Text("Submit")
                            .padding()
                            .foregroundColor(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(Color("QuestionColor"))
                                    .frame(width: 340)
                            )
                        }
                        .disabled(manager.canSubmitQuiz())
                    }
                }
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

struct QuestionGame_Previews: PreviewProvider {
    static var previews: some View {
        QuestionGame()
    }
}
