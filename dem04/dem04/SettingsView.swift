//
//  SettingsView.swift
//  dem04
//
//  Created by Isaac Frank on 2/21/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var maxPeople = 20
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            HStack {
                VStack(alignment: .leading) {
                        Button {
                            ContentView()
                        } label: {
                            HStack {
                                Image(systemName: "chevron.left")
                                Text("Back")
                            }
                        }
                    Text("Settings")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                    
                    Spacer()
                    
                    Spacer()
                }
                .padding()
                Spacer()
            }
            
            
            
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
