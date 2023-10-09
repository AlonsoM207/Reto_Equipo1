//
//  LetrasViewModel.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 03/10/23.
//

import Foundation
import Combine

class LetrasViewModel: ObservableObject {
    
    @Published var isLoading = false
    @Published var letras = letraList
    
    func downloadLetras() async throws {
        isLoading = true
        do {
            /*
             //Real request
             let url = URL(string "")!
             let urlRequest = URLRequest(url:url)
             let (data, response) = try await URLSession.shared.data(for:Request)
             let decoder = JSONDecoder()
             let items = try decoder.decode([Planet].self, from data)
             */
            
            // Simulate request
            try await Task.sleep(for: .seconds(1))
            
            isLoading = false
            letras = letraList
            
        } catch {
            isLoading = false
            print("LetrasViewModel Error:", error.localizedDescription)
            throw error
        }
    }
}

let letraList = [
    Letra(name: "A"),
    Letra(name: "B"),
    Letra(name: "C"),
    Letra(name: "D"),
    Letra(name: "E"),
    Letra(name: "F"),
    Letra(name: "H"),
    Letra(name: "I"),
    Letra(name: "L"),
    Letra(name: "M"),
    Letra(name: "M"),
    Letra(name: "N"),
    Letra(name: "O"),
    Letra(name: "P"),
    Letra(name: "Q"),
    Letra(name: "R"),
    Letra(name: "S"),
    Letra(name: "T"),
    Letra(name: "U"),
    Letra(name: "V"),
    Letra(name: "W"),
    Letra(name: "X"),
    Letra(name: "Y"),
]
