//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by bMatheron on 31/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
