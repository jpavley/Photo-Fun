//
//  ContentView.swift
//  Photo Fun
//
//  Created by John Pavley on 12/14/19.
//  Copyright © 2019 John Pavley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State var currentContrast: Double = 6/2
  @State var currentSaturation: Double = 10/2
  @State var currentHueRotation: Double = 360/2
  @State var currentBrightness: Double = 1/2
  @State var currentBlur: CGFloat = 10/2
  
  let maxContrast: Double = 5
  let maxSaturation: Double = 10
  let maxHueRotation: Double = 360
  let maxBrightness: Double = 1
  let maxBlur: CGFloat = 10
  
  let stepContrast: Double = 0.005
  let stepSaturation: Double = 0.005
  let stepHueRotation: Double = 1.0
  let stepBrightness: Double = 0.005
  let stepBlur: CGFloat = 0.005
  
  var body: some View {
    VStack {
      
      Image("John")
        .resizable()
        .scaledToFit()
        .contrast(currentContrast)
        .saturation(currentSaturation)
        .hueRotation(Angle(degrees: currentHueRotation))
        .brightness(currentBrightness)
        .blur(radius: currentBlur)
      
      Spacer()
      
      ScrollView {
        
        VStack {
          Slider(value: $currentContrast,
                 in: 0...maxContrast,
                 step: stepContrast)
          Text("Contrast: \(currentContrast)")
        }.padding()
        
        VStack {
          Slider(value: $currentSaturation,
                 in: 0...maxSaturation,
                 step: stepSaturation)
          Text("Saturation: \(currentSaturation)")
        }.padding()
        
        VStack {
          Slider(value: $currentHueRotation,
                 in: 0...maxHueRotation,
                 step: stepHueRotation)
          Text("Hue Rotation: \(currentHueRotation)")
        }.padding()
        
        VStack {
          Slider(value: $currentBrightness,
                 in: 0...maxBrightness,
                 step: stepBrightness)
          Text("Brightness: \(currentBrightness)")
        }.padding()
        
        VStack {
          Slider(value: $currentBlur,
                 in: 0...maxBlur,
                 step: stepBlur)
          Text("Blur: \(currentBlur)")
        }.padding()
        
      } // end ScrollView
      
      
    } // end VStack
      .padding()
    
  } // end body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
