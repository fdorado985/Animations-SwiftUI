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
    Button("Tap Me") {
      self.enabled.toggle()
    }
    .frame(width: 200, height: 200)
    .background(enabled ? Color.blue : Color.red)
    .animation(nil)
    .foregroundColor(.white)
    .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
    .animation(.interpolatingSpring(stiffness: 10, damping: 1))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
