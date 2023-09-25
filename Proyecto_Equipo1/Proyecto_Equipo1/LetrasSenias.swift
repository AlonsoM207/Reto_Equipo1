//
//  Letras-Señas.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 21/09/23.
//

import SwiftUI

struct LetrasSenias: View {
    var body: some View {
        NavigationView{
            ZStack{
                // Color de fondo
                Color("Primary")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(width: 250, height: 50)
                            .offset(y: -30)
                            .padding()
                        Text("Imita esta seña")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Text"))
                            .font(Font.custom("Oxygen-Regular", size: 35))
                        .offset(y: -30)
                        
                    }
                    ZStack{
                        Rectangle()
                            .foregroundColor(.green)
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
                    
                    Image("A")
                        .resizable()
                        .scaledToFit()
                        .offset(y: -100)
                }
            }
        }
    }
}

struct Letras_Sen_as_Previews: PreviewProvider {
    static var previews: some View {
        LetrasSenias()
    }
}
