//
//  ShowSignView.swift
//  Proyecto_Equipo1
//
//  Created by Ivonne Reyna on 15/10/23.
//

import SwiftUI

struct ShowSignView: View {
    private(set) var labelData: Classification
    
    var body: some View {
        HStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.green)
                    .cornerRadius(10)
                    .frame(width: 70, height: 50)
                    .offset(y: -50)
                Image("Camara")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(y: -50)
            }
            ZStack{
                Rectangle()
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .frame(width: 50, height: 50)
                    .offset(y: -50)
                Text(labelData.label.capitalized)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Text"))
                    .font(Font
                        .custom("Oxygen-Regular", size: 20))
                    .offset(y: -50)
            }
        }
    }
}

struct ShowSignView_Previews: PreviewProvider {
    static var previews: some View {
        ShowSignView(labelData: Classification())
    }
}
