//
//  ContentView.swift
//  Animations
//
//  Created by Juan Francisco Dorado Torres on 20/11/20.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Button("Tap Me") {
        // do nothing
      }

      Rectangle()
        .fill(Color.red)
        .frame(width: 200, height: 200)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
