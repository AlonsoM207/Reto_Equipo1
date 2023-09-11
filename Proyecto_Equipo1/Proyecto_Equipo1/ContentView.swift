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
                Color("Primary")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Hello, world!")
                        .foregroundColor(Color("Text"))
                        .font(Font
                            .custom("Oxygen-Regular", size:40))
                    
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
