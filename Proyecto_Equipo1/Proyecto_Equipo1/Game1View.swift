//
//  GameView.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 18/09/23.
//

import SwiftUI

struct Game1View: View {
    var body: some View {
        ZStack{
            // Color de fondo
            Color("Primary")
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 40) {
                Text("2 + ? = 5")
                    .font(Font.custom("Oxygen-Regular", size:50))
                    .foregroundColor(Color("Text"))
                    .multilineTextAlignment(.center)
                    .fontWeight(.heavy)
                Spacer()
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
                
        }
    }
}

struct Game1View_Previews: PreviewProvider {
    static var previews: some View {
        Game1View()
    }
}
