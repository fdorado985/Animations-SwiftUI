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
//      self.animationAmount += 1
    }
    .padding(50)
    .background(Color.red)
    .foregroundColor(.white)
    .clipShape(Circle())
    .overlay(
      Circle()
        .stroke(Color.red)
        .scaleEffect(animationAmount)
        .opacity(Double(2 - animationAmount))
        .animation(
          Animation.easeInOut(duration: 1)
            .repeatForever(autoreverses: false)
        )
    )
    .onAppear {
      self.animationAmount = 2
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
