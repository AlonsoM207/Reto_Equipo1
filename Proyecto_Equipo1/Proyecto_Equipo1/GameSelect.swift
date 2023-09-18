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
                // Título de la página
                Text("Selección de Juegos")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Text"))
                    .font(Font
                        .custom("Oxygen-Regular", size:35))
                    .offset(y:-100)
                // Imagen para cada uno de los juegos que debe de llevar al juego correspondiente
                //  Pero aún no se ha agregado
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("GameStack"))
                        .cornerRadius(20)
                        .frame(width: 300, height: 125)
                    HStack{
                        Text("Matemáticas con señas")
                            .foregroundColor(Color("Text"))
                            .font(Font
                                .custom("Oxygen-Regular", size:18))

                        Image("Math")
                            .resizable()
                            .frame(width: 30, height:30)
                    }
                }
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("GameStack"))
                        .cornerRadius(20)
                        .frame(width: 300, height: 125)
                    HStack{
                        Text("Deletrear palabras con señas")
                            .foregroundColor(Color("Text"))
                            .font(Font
                                .custom("Oxygen-Regular", size:18))
                        Image("Spelling")
                            .resizable()
                            .frame(width: 30, height:30)
                    }
                }
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("GameStack"))
                        .cornerRadius(20)
                        .frame(width: 300, height: 125)
                    HStack{
                        Text("Aprender señas")
                            .foregroundColor(Color("Text"))
                            .font(Font
                                .custom("Oxygen-Regular", size:18))
                        Image("Sign")
                            .resizable()
                            .frame(width: 30, height:30)
                    }
                }
                        
                
                    
                //Image("Math")
                //    .resizable()
                //    .scaledToFit()
                //    .cornerRadius(20)
                //    .frame(width: 200, height: 200)
            
            }
        }
    }
    
    struct GameSelect_Previews: PreviewProvider {
        static var previews: some View {
            GameSelect()
        }
    }
}
