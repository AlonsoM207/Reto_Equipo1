//
//  DeletrearConSeñas.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 21/09/23.
//

import SwiftUI

struct DeletrearConSenias: View {
    var body: some View {
        NavigationView{
            ZStack{
                // Color de fondo
                Color("Primary")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Deletrea este objeto usando señas")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("Text"))
                        .font(Font
                        .custom("Oxygen-Regular", size: 35))
                        //.offset(y: -140)
                    Image("Placeholder2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                        
                    ZStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .frame(width: 300, height: 70)
                            .padding()
                        Text("M _ _ _ _ _ _")
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Text"))
                            .font(Font
                            .custom("Oxygen-Regular", size: 35))
                    
                    }
                Image("Signs")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 250)
                }
            }
        }
    }
}

struct DeletrearConSenias_Previews: PreviewProvider {
    static var previews: some View {
        DeletrearConSenias()
    }
}
