//
//  ContentView.swift
//  Animations
//
//  Created by Juan Francisco Dorado Torres on 20/11/20.
//

import SwiftUI

struct ContentView: View {
  @State private var animationAmount: CGFloat = 1

  var body: some View {
    Button("Tap Me") {
      self.animationAmount += 1
    }
    .padding(50)
    .background(Color.red)
    .foregroundColor(.white)
    .clipShape(Circle())
    .scaleEffect(animationAmount)
    .animation(
      Animation.easeInOut(duration: 2)
        .delay(1)
    )
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
