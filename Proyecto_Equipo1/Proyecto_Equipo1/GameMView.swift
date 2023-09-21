//
//  GameMView.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 21/09/23.
//

import SwiftUI

struct GameMView: View {
    var body: some View {
        ZStack{
            // Color de fondo
            Color("Primary")
                .edgesIgnoringSafeArea(.all)
            VStack {
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .frame(width: 300, height: 130)
                        .offset(y: -50)
                    Text("2 + ? = 5")
                        .font(Font.custom("Oxygen-Regular", size: 70))
                        .foregroundColor(Color("Text"))
                        .multilineTextAlignment(.center)
                        .offset(y: -50)
                }
                
                HStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(.green)
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                            .offset(y: -50)
                        Text("3")
                            .font(Font.custom("Oxygen-Regular", size: 45))
                            .foregroundColor(Color("Text"))
                            .multilineTextAlignment(.center)
                            .offset(y: -50)
                    }
                    Text("     ")
                    ZStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                            .offset(y: -50)
                        Text("1")
                            .font(Font.custom("Oxygen-Regular", size: 45))
                            .foregroundColor(Color("Text"))
                            .multilineTextAlignment(.center)
                            .offset(y: -50)
                    }
                    Text("     ")
                    ZStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                            .offset(y: -50)
                        Text("2")
                            .font(Font.custom("Oxygen-Regular", size: 45))
                            .foregroundColor(Color("Text"))
                            .multilineTextAlignment(.center)
                            .offset(y: -50)
                    }
                    Text("     ")
                    ZStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                            .offset(y: -50)
                        Text("7")
                            .font(Font.custom("Oxygen-Regular", size: 45))
                            .foregroundColor(Color("Text"))
                            .multilineTextAlignment(.center)
                            .offset(y: -50)
                    }
                }
                
                Image("3S")
                    .resizable()
                    .scaledToFit()
                
            }
                
        }
    }
}

struct GameMView_Previews: PreviewProvider {
    static var previews: some View {
        GameMView()
    }
}
