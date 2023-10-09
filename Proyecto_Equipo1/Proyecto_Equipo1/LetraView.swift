//
//  LetraView.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 03/10/23.
//

import SwiftUI

struct LetraView: View {
    let letra: Letra
    @ObservedObject var model: LetrasViewModel
    var body: some View {
        ZStack{
            Color("Primary")
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack(spacing: 32) {
                    
                    Image(letra.name)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 400)
                        .padding(.horizontal, 32)
                }
                .padding(32)
            }
            .navigationTitle(letra.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LetraView_Previews: PreviewProvider {
    static var previews: some View {
        LetraView(letra: letraList[0], model: .init())
    }
}
