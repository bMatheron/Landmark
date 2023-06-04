//
//  LAndmarkSettings.swift
//  MacLandmarks
//
//  Created by bMatheron on 04/06/2023.
//

import SwiftUI

struct LandmarkSettings: View {
    @AppStorage("MapView.zoom")
    private var zoom: MapView.Zoom = .medium
    var body: some View {
        Form {
            Picker("Map Zoom", selection: $zoom){
                ForEach(MapView.Zoom.allCases) { zoom in
                    Text(zoom.rawValue)
                }
            }
            .pickerStyle(.inline)
        }
        .frame(width: 300)
        .navigationTitle("Landmarks Settings")
        .padding(80)
    }
}

struct LandmarkSettings_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkSettings()
    }
}
