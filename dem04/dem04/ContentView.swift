//
//  ContentView.swift
//  dem04
//
//  Created by Isaac Frank on 2/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var people = 0
    @State var maxPeople = 30
    @State private var backgroundColor = Color.blue
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                ZStack {
                    let opacity = Double(people) / Double(maxPeople)
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
                            NavigationLink(destination: SettingsView(maxPeople: $maxPeople)) {
                                Image(systemName: "gear")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                            }
//                            Button {
//                                SettingsView()
//                            } label: {
//                                Image(systemName: "gear")
//                                    .font(.largeTitle)
//                                    .foregroundColor(.white)
//                            }
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
    
    struct SettingsView: View {
        @Binding var maxPeople: Int
    
        var body: some View {
//            NavigationView {
//                Form {
//                    HStack {
//                        Text("Max Occupancy: \(maxPeople)")
//                        Spacer()
//                        Button {
//                            maxPeople-=1
//                        } label: {
//                            Image(systemName: "minus")
//                        }
//                        Button {
//                            maxPeople+=1
//                        } label: {
//                            Image(systemName: "plus")
//                        }
//                    }
//    //                Section {
//    //                    Picker("Max Occupancy: \(maxPeople)", selection: $maxPeople) {
//    //                        Image(systemName: "minus")
//    //                        Image(systemName: "plus")
//    //                    }
//    //                    .pickerStyle(.inline)
//    //                }
//                }
//                .navigationTitle("Settings")
    //            .background(.black)
                ZStack {
                    Color(.black)
                        .ignoresSafeArea()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Settings")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .bold()
                                .padding()
                            HStack {
                                Text("Max Occupancy: \(maxPeople)")
                                Spacer()
                                Button {
                                    maxPeople-=1
                                } label: {
                                    Image(systemName: "minus")
                                }
                                Button {
                                    maxPeople+=1
                                } label: {
                                    Image(systemName: "plus")
                                }
                            }
                            .foregroundColor(.white)
                            .border(.white)
                            Spacer()
                        }
                        .padding()
                        Spacer()
                    }
                }
            }
        }
    }
    
    
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
