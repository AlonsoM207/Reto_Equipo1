//
//  GameSelect.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 11/09/23.
//

import SwiftUI

struct GameSelect: View {
    var body: some View {
<<<<<<< Updated upstream
        ZStack{
            // Color del fondo
            Color("Primary")
                .edgesIgnoringSafeArea(.all)
            VStack{
<<<<<<< Updated upstream
                // Título de la página
                Text("Selección de Juegos")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Text"))
                    .font(Font
                        .custom("Oxygen-Regular", size:35))
                    .offset(y:-10)
                // Imagen para cada uno de los juegos que debe de llevar al juego correspondiente
                //  Pero aún no se ha agregado
                Image("Math")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .frame(width: 200, height: 200)
                Image("Spelling")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .frame(width: 200, height: 200)
                Image("Sign")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .frame(width: 200, height: 200)
=======
        NavigationView{
            ZStack{
                // Color del fondo
                Color("Primary")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                        ZStack{
                            Rectangle()
=======
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .frame(width: 350, height: 50)
                        .padding()
                    // Título de la página
                    Text("Selección de Juegos")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("Text"))
                        .font(Font
                            .custom("Oxygen-Regular", size: 35))
                }
                .offset(y: 20)
                
                // Imagen para cada uno de los juegos que debe de llevar al juego correspondiente
                //  Pero aún no se ha agregado
                
                NavigationLink(destination: LetrasSenias()){
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("GameStack1"))
                            .cornerRadius(20)
                            .frame(width: 300, height: 125)
                        
                        VStack{
                            Image("Sign")
                                .resizable()
                                .frame(width: 40, height: 40)
                            Text("Practicar")
>>>>>>> Stashed changes
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .frame(width: 350, height: 50)
                                .padding()
                                .offset(y: -40)
                            // Título de la página
                            Text("Selección de Juegos")
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("Text"))
                                .font(Font
                                    .custom("Oxygen-Regular", size: 35))
                                .offset(y: -40)
                        }
<<<<<<< Updated upstream

                    
                    // Imagen para cada uno de los juegos que debe de llevar al juego correspondiente
                    //  Pero aún no se ha agregado
                    NavigationLink(destination: GameMView()){
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("GameStack1"))
                                .cornerRadius(20)
                                .frame(width: 300, height: 125)
                            VStack{
                                Image("Sign")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Aprender señas")
                                    .foregroundColor(.white)
                                    .font(Font
                                        .custom("Oxygen-Regular", size:18))
                            }
=======
                    }
                }
                .padding()
                
                NavigationLink(destination: DeletrearConSenias()){
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("GameStack2"))
                            .cornerRadius(20)
                            .frame(width: 300, height: 125)
                        VStack{
                            Image("Spelling")
                                .resizable()
                                .frame(width: 40, height: 40)
                            Text("Deletrear")
                                .foregroundColor(Color("TextAlt"))
                                .font(Font
                                    .custom("Oxygen-Regular", size:30))
>>>>>>> Stashed changes
                        }
                        .padding()
                    }
<<<<<<< Updated upstream
                    NavigationLink(destination: GameMView()){
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("GameStack2"))
                                .cornerRadius(20)
                                .frame(width: 300, height: 125)
                            VStack{
                                Image("Spelling")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Deletrear palabras con señas")
                                    .foregroundColor(Color("TextAlt"))
                                    .font(Font
                                        .custom("Oxygen-Regular", size:18))
=======
                }
                .padding()
                .offset(y: -10)
                
                NavigationLink(destination: MateSenias()){
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("GameStack3"))
                            .cornerRadius(20)
                            .frame(width: 300, height: 125)
                        VStack{
                            Image("Math")
                                .resizable()
                                .frame(width: 40, height: 40)
                            Text("Matemáticas")
                                .foregroundColor(.white)
                                .font(Font
                                    .custom("Oxygen-Regular", size:30))
>>>>>>> Stashed changes
                            }
                        }
                        .padding()
                    }
<<<<<<< Updated upstream
                    
                    NavigationLink(destination: GameMView()){
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("GameStack3"))
                                .cornerRadius(20)
                                .frame(width: 300, height: 125)
                            VStack{
                                Image("Math")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Matemáticas con señas")
                                    .foregroundColor(.white)
                                    .font(Font
                                        .custom("Oxygen-Regular", size:18))
=======
                .padding()
                .offset(y: -25)
                
                NavigationLink(destination: MateSenias()){
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color("GameStack4"))
                            .cornerRadius(20)
                            .frame(width: 300, height: 125)
                        VStack{
                            Image("Options")
                                .resizable()
                                .frame(width: 40, height: 40)
                            Text("Opciones")
                                .foregroundColor(.white)
                                .font(Font
                                    .custom("Oxygen-Regular", size:30))
>>>>>>> Stashed changes
                            }
                        }
                        .padding()
                    }
<<<<<<< Updated upstream
=======
                .padding()
                .offset(y: -40)
>>>>>>> Stashed changes
                }
>>>>>>> Stashed changes
            }
            
        }
    }
    
    struct GameSelect_Previews: PreviewProvider {
        static var previews: some View {
            GameSelect()
        }
    }
}
