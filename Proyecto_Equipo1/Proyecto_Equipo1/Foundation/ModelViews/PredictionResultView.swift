//
//  PredictionResultView.swift
//  Proyecto_Equipo1
//
//  Created by Alumno on 11/10/23.
//

import SwiftUI

struct PredictionResultView: View {
    private(set) var labelData: Classification
    
    var body: some View {
        // TODO: The View that shows classification results - edit the styling below!
        
        ZStack(alignment: .top) {

        //[OPTIONAL] Edit panel background color here.
        Color.red
            .opacity(0.5)
            .ignoresSafeArea()

            VStack {
                //This view displays your prediction. Make edits in PredictiveLabelView file.
                PredictiveLabelView(labelData: labelData)

                //This view displays your prediction. Make edits in DisplayedContentView file.
                DisplayedContentView(labelData: labelData)
            }
            .padding()


        }
        //[OPTIONAL] Change the size of the frame.
        .frame(width: 350)

    }
}

struct PredictionResultView_Previews: PreviewProvider {
    static var previews: some View {
        PredictionResultView(labelData: Classification())
    }
}