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
            Color("Primary")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Selección de Juegos")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Text"))
                    .font(Font
                        .custom("Oxygen-Regular", size:35))
                    .offset(y:-10)
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
            }
        }
    }
    
    struct GameSelect_Previews: PreviewProvider {
        static var previews: some View {
            GameSelect()
        }
    }
}
