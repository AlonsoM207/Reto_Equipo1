//
//  MateSenias.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 21/09/23.
//

import SwiftUI

struct MateSenias: View {
    var body: some View {
        ZStack{
            // Color de fondo
            Color("Primary")
                .edgesIgnoringSafeArea(.all)
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .frame(width: 200, height: 80)
                        .offset(y: -100)
                        .padding()
                    Text("2 + ? = 5")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("Text"))
                        .font(Font
                            .custom("Oxygen-Regular", size: 45))
                    .offset(y: -100)
                    
                }
                HStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(.green)
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                            .offset(y: -100)
                            .padding()
                        Text("3")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Text"))
                            .font(Font.custom("Oxygen-Regular", size: 40))
                            .offset(y: -100)
                    }
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                            .offset(y: -100)
                            .padding()
                        Text("1")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Text"))
                            .font(Font.custom("Oxygen-Regular", size: 40))
                            .offset(y: -100)
                    }
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                            .offset(y: -100)
                            .padding()
                        Text("4")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Text"))
                            .font(Font.custom("Oxygen-Regular", size: 40))
                            .offset(y: -100)
                    }
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                            .offset(y: -100)
                            .padding()
                        Text("6")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Text"))
                            .font(Font.custom("Oxygen-Regular", size: 40))
                            .offset(y: -100)
                    }
                    
                }
                Image("3S")
                    .resizable()
                    .scaledToFit()
                    .offset(y: -80)
            }
        }
    }
}

struct MateSenias_Previews: PreviewProvider {
    static var previews: some View {
        MateSenias()
    }
}
