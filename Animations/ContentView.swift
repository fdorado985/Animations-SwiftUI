//
//  ContentView.swift
//  Animations
//
//  Created by Juan Francisco Dorado Torres on 20/11/20.
//

import SwiftUI

struct ContentView: View {
  @State private var enabled = false

  var body: some View {
    LinearGradient(
      gradient: Gradient(colors: [.yellow, .red]),
      startPoint: .topLeading,
      endPoint: .bottomTrailing
    )
    .frame(width: 300, height: 200)
    .clipShape(
      RoundedRectangle(cornerRadius: 10)
    )
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
