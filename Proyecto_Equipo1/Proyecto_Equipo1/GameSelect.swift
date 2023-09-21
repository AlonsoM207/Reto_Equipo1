//
//  GameSelect.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 11/09/23.
//

import SwiftUI

struct GameSelect: View {
    var body: some View {
        ZStack{
            // Color del fondo
            Color("Primary")
                .edgesIgnoringSafeArea(.all)
            VStack{
                ZStack{
                    Rectangle()
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
                            Text("Aprender señas")
                                .foregroundColor(.white)
                                .font(Font
                                    .custom("Oxygen-Regular", size:18))
                        }
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
                            Text("Deletrear palabras con señas")
                                .foregroundColor(Color("TextAlt"))
                                .font(Font
                                    .custom("Oxygen-Regular", size:18))
                        }
                    }
                }
                .padding()
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
                            Text("Matemáticas con señas")
                                .foregroundColor(.white)
                                .font(Font
                                    .custom("Oxygen-Regular", size:18))
                            }
                        }
                        .padding()
                    }
                }
            }
        }
        
        struct GameSelect_Previews: PreviewProvider {
            static var previews: some View {
                GameSelect()
            }
        }
    }

