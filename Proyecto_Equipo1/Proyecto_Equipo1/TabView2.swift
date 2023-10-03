//
//  TabView2.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 02/10/23.
//

import SwiftUI

struct TabView2: View {
    
    @State private var name = ""
    
    var body: some View {
        
        
        TabView{
            GameSelect()
                .tabItem{
                    Image(systemName: "gamecontroller.fill")
                }
                .toolbarBackground(.visible, for: .tabBar)
            
            DictionaryView()
                .tabItem{
                    Image(systemName: "star.fill")
                }
                .toolbarBackground(.visible, for: .tabBar)
        }
        
        
    }
}

struct TabView2_Previews: PreviewProvider {
    static var previews: some View {
        TabView2()
    }
}
