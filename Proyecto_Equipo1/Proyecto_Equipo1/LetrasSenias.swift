//
//  Letras-Señas.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 21/09/23.
//

import SwiftUI

struct LetrasSenias: View {
    @EnvironmentObject var predictionStatus: PredictionStatus
    @StateObject var classifierViewModel = ClassifierViewModel()
    private(set) var labelData: Classification
    @State private var ansChosen = ""
    @State private var answer = "A"
    @State private var colorLetra = "white"
    
    var body: some View {
        let predictionLabel = predictionStatus.topLabel
            ZStack{
                // Color de fondo
                Color("Primary")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(width: 300, height: 50)
                            .offset(y: -30)
                            .padding()
                        Text("Haz la seña correcta")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Text"))
                            .font(Font.custom("Oxygen-Regular", size: 30))
                        .offset(y: -30)   
                    }
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color(colorLetra))
                            .cornerRadius(10)
                            .frame(width: 200, height: 200)
                            .offset(y: -80)
                            .padding()
                        Text("A")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Text"))
                            .font(Font
                                .custom("Oxygen-Regular", size: 150))
                            .offset(y: -80)
                    }
        
                    // DO NOT EDIT this section. This displays the classification camera
                    GeometryReader { geo in
                        VStack(alignment: .center) {
                            LiveCameraRepresentable() {
                                predictionStatus.setLivePrediction(with: $0, label: $1, confidence: $2)
                            }
                            
                            //PredictionResultView(labelData: classifierViewModel.getPredictionData(label: predictionLabel))
                            
                        }// HStack
                        .onAppear(perform: classifierViewModel.loadJSON)
                        .frame(width: geo.size.width)
                        .offset(x: 20)
                        .offset(y: -80)
                    }
                    HStack{
                        ZStack{
                            Button(action: {
                                ansChosen = predictionLabel
                                print("button pressed")
                                if ansChosen == answer{
                                    colorLetra = "green"
                                } else {
                                    colorLetra = "red"
                                }
                                    }) {
                                        Image("Camara")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        
                                    }
                                    .buttonStyle(.borderedProminent)
                                        .tint(.green)
                                        .offset(y: -50)

                        }
                        ShowSignView(labelData: classifierViewModel.getPredictionData(label: predictionLabel))
                    }
                }
            }
        
    }
}

struct Letras_Sen_as_Previews: PreviewProvider {
    static var previews: some View {
        LetrasSenias(labelData: Classification())
    }
}
