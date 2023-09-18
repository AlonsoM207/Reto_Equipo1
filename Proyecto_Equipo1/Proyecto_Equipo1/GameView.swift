//
//  GameView.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 18/09/23.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        ZStack{
            // Color de fondo
            Color("Primary")
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 40) {
                HStack{
                    Text("Game")
                        .foregroundColor(Color("Text"))
                        .font(Font.custom("Oxygen-Regular", size:45))
                    
                    Spacer()
                    
                    Text("1 de 10")
                        .foregroundColor(Color("Text"))
                        .font(Font.custom("Oxygen-Regular", size:45))
                }
                
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
                
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
