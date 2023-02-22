////
////  SettingsView.swift
////  dem04
////
////  Created by Isaac Frank on 2/21/23.
////
//
//import SwiftUI
//
//struct SettingsView: View {
//    @Binding var maxPeople: Int
//    
//    var body: some View {
//        NavigationView {
//            Form {
//                HStack {
//                    Text("Max Occupancy: \(maxPeople)")
//                    Spacer()
//                    Button {
//                        maxPeople-=1
//                    } label: {
//                        Image(systemName: "minus")
//                    }
//                    Button {
//                        maxPeople+=1
//                    } label: {
//                        Image(systemName: "plus")
//                    }
//                }
////                Section {
////                    Picker("Max Occupancy: \(maxPeople)", selection: $maxPeople) {
////                        Image(systemName: "minus")
////                        Image(systemName: "plus")
////                    }
////                    .pickerStyle(.inline)
////                }
//            }
//            .navigationTitle("Settings")
////            .background(.black)
////            ZStack {
////                Color(.black)
////                    .ignoresSafeArea()
////                HStack {
////                    VStack(alignment: .leading) {
//////                        NavigationLink(destination: ContentView()) {
//////                            HStack {
//////                                Image(systemName: "chevron.left")
//////                                Text("Back")
//////                            }
//////                        }
////                        Text("Settings")
////                            .font(.largeTitle)
////                            .foregroundColor(.white)
////                            .bold()
////                            .padding()
////
////                        Spacer()
////
////                        Spacer()
////                    }
////                    .padding()
////                    Spacer()
////                }
////            }
//        }
//    }
//}
//
//struct SettingsView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsView(maxPeople: Binding<Int>)
//    }
//}
