//
//  DictionaryViewModel.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 02/10/23.
//

import Foundation
import Combine

class DictionaryViewModel: ObservableObject {
    
    @Published var letras = letraList
    
}


let letraList = [
    Letra(name: "A")
]
