//
//  ContentView.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 11/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showWelcomeView = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("Primary")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("Placeholder")
                        .resizable()
                        .scaledToFit()
                        .offset(y:-50)
                    Text("Aprendiendo con Señas")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("Text"))
                        .font(Font
                            .custom("Oxygen-Regular", size:45))
                        .offset(y:-60)
                    NavigationLink(destination: GameSelect()) {
                        Button(action: {}) {
                            .buttonStyle(.borderedProminent)

                        }
                        
                    }
                    
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
