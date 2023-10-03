//
//  Letra.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 02/10/23.
//

import Foundation

struct Letra {
    let name: String
}

extension Letra: Identifiable, Hashable {
    var id: String { name }
}
