//
//  ContentView.swift
//  Animations
//
//  Created by Juan Francisco Dorado Torres on 20/11/20.
//

import SwiftUI

struct ContentView: View {
  @State private var isShowingRed = false

  var body: some View {
    VStack {
      Button("Tap Me") {
        withAnimation {
          self.isShowingRed.toggle()
        }
      }

      if isShowingRed {
        Rectangle()
          .fill(Color.red)
          .frame(width: 200, height: 200)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
