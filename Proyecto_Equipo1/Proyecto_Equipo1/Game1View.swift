//
<<<<<<< Updated upstream
//  GameView.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 18/09/23.
=======
//  Game1View.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 21/09/23.
>>>>>>> Stashed changes
//

import SwiftUI

struct Game1View: View {
    var body: some View {
        ZStack{
            // Color de fondo
            Color("Primary")
                .edgesIgnoringSafeArea(.all)
<<<<<<< Updated upstream
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
            
=======
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
                
                Image("3S")
                    .resizable()
                    .scaledToFit()
                
            }
>>>>>>> Stashed changes
                
        }
    }
}

struct Game1View_Previews: PreviewProvider {
    static var previews: some View {
        Game1View()
    }
}
