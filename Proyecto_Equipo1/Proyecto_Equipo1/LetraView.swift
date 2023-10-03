//
//  LetraView.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 02/10/23.
//

import SwiftUI

struct LetraView: View {
    let letra: Letra
    @ObservedObject var model: DictionaryViewModel
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LetraView_Previews: PreviewProvider {
    static var previews: some View {
        LetraView(letra: letraList[0], model: .init())
    }
}
