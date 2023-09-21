//
//  ContentView.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 11/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                // Color de fondo
                Color("Primary")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    //Logo de la aplicación
                    Image("Placeholder")
                        .resizable()
                        .scaledToFit()
                        .offset(y:-50)
                    // Título de la aplicación
                    Text("Aprendiendo con Señas")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("Text"))
                        .font(Font
                            .custom("Oxygen-Regular", size:45))
                        .offset(y:-60)
                    // Botón que lleva a la página principal de la app
                    NavigationLink(destination: GameSelect()) {
                        Text("Iniciar")
                            .font(.system(size: 35))
                    } .buttonStyle(.borderedProminent)
                        .tint(.pink)
                                            
                }
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
