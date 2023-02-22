//
//  ContentView.swift
//  dem04
//
//  Created by Isaac Frank on 2/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var people = 0
    @State private var backgroundColor = Color.blue
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            ZStack {
                let opacity = Double(people) / 30.0
                Color.red
                    .ignoresSafeArea()
                    .opacity(opacity)
                VStack {
                    HStack {
                        Text("\(people) people")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                        Spacer()
                        Button {
                            SettingsView()
                        } label: {
                            Image(systemName: "gear")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }
                    }
                    .padding()
                    Spacer()
                    
                    HStack {
                        Button {
                            if(people != 0) {
                                people -= 1
                            }
                        } label: {
                            Image(systemName: "minus")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }
                        
                        Spacer()
                        
                        
                        Button {
                            people += 1
                        } label: {
                            Image(systemName: "plus")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }
                    }
                    .padding()
                }
                .padding()
            }
        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
