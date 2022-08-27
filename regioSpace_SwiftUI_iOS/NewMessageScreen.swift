//
//  NewMessageScreen.swift
//  regioSpace_SwiftUI_iOS
//
//  Created by Patrick Lanham on 26.08.22.
//

import SwiftUI

enum ActivitySelection: String {
    
    
    case Events
    case Feste
    case Politik
    case Sport
    case Bildung
    
    
}


struct NewMessageScreen: View {
    
    struct ViewHeightKey: PreferenceKey {
        static var defaultValue: CGFloat { 100 }
        static func reduce(value: inout Value, nextValue: () -> Value) {
            value = value + nextValue()
        }
    }
    
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    @State private var activitySelection = "Wähle eine Aktivität"
    @State private var textFieldText = ""
    @State var textEditorHeight : CGFloat = 150
    
    
    var body: some View {
        NavigationView{
            
        
        VStack {
            Spacer()
            Button {
                
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 250)
                    .padding(.horizontal, 20)
                    .foregroundColor(AppConfig.containerColor)
                    .overlay(
                        VStack {
                            Image(systemName: "camera")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .foregroundColor(.white)
                            
                            Text("Wähle ein Foto aus")
                                .font(.system(size: 13))
                                .foregroundColor(.white)
                                
                        }
                        
                    
                    )
                
                
            }
            
                    Button(action: {
                        
                    }, label: {
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .frame(height: 90)
                                .padding(.horizontal, 20)
                                .foregroundColor(AppConfig.containerColor)
                                .overlay(
                            Picker("Wähle deine Aktivität", selection: $activitySelection) {
                                
                                Text("Events").tag(Activity.Events)
                                    .foregroundColor(.white)
                                Text("Feste").tag(Activity.Feste)
                                    .foregroundColor(.white)
                                Text("Politik").tag(Activity.Politik)
                                    .foregroundColor(.white)
                                Text("Sport").tag(Activity.Sport)
                                    .foregroundColor(.white)
                                Text("Bildung").tag(Activity.Bildung)
                                    .foregroundColor(.white)
                                
                            }
                            
                            )
                        }
                        .foregroundColor(.white)
                        .pickerStyle(.menu)
                        
                    }
                  
                    

                
                )
            
          
                    
                    TextEditor(text: $textFieldText)
                        .background(AppConfig.containerColor)
                        .padding(.horizontal, 20)
                        .cornerRadius(5)
                        .frame(height: max(40,textEditorHeight))
            
            Spacer()
            
            Button {
                
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.cyan)
                        .frame(height: 60)
                    Text("Weiter")
                        .foregroundColor(.white).font(.system(size: 18)).bold()
                    
                }

            }
            .padding(.horizontal, 20)
            
            Text("")

                        
                  
            
            
        }
        .onPreferenceChange(ViewHeightKey.self) { textEditorHeight = $0 }
        .background(AppConfig.backgroundColor)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Text("Zurück")
                    
                }
            }

        }
        }
        .navigationTitle("Neuer Post")
        .foregroundColor(.white)
    }
}

struct NewMessageScreen_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageScreen()
    }
}
