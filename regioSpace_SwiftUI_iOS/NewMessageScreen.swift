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
        static var defaultValue: CGFloat { 80 }
        static func reduce(value: inout Value, nextValue: () -> Value) {
            value = value + nextValue()
        }
    }
    
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    @State private var activitySelection = "Wähle eine Aktivität"
    @State private var textFieldText = "Gebe deine Nachricht ein..."
    @State var textEditorHeight : CGFloat = 150
    
    
    var body: some View {
        
        NavigationView{
            
        
            VStack {
                Spacer()
                
                
                Button {
                    
                } label: {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 150)
                        .padding(.horizontal, 20)
                        .foregroundColor(AppConfig.containerColor)
                        .overlay(
                            VStack {
                                Image(systemName: "camera")
                                    .resizable()
                                    .frame(width: 45, height: 45)
                                    .foregroundColor(.gray)
                                
                                Text("Wähle ein Foto aus")
                                    .font(.system(size: 13))
                                    .foregroundColor(.gray)
                                    
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
                
                
                TextEditor(text: self.$textFieldText)
                    .foregroundColor(self.textFieldText == "Gebe deine Nachricht ein..." ? .gray : .primary)
                    .padding(.all)
                            .background(AppConfig.containerColor)
                            .padding(.horizontal, 20)
                            .frame(height: max(40,textEditorHeight))
                            .cornerRadius(5)
                
                            .onAppear {
                        // Placeholder text bevor the user starts to type.
                                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { (noti) in
                                                   withAnimation {
                                                       if self.textFieldText == "Gebe deine Nachricht ein..." {
                                                           self.textFieldText = ""
                                                       }
                                                   }
                                }
                                
                  // Adds the placeholder text back when the user closes the keyboard without typing
                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { (noti) in
                                    withAnimation {
                                        if self.textFieldText == "" {
                                            self.textFieldText = "Gebe deine Nachricht ein..."
                                        }
                                    }
                                }
                            
                            }
    
                        
                    
                   
                    
                    
                
                        
                        
                
                Spacer()
                
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.cyan)
                            .frame(height: 60)
                        Text("Jetzt veröffentlichen*")
                            .foregroundColor(.white).font(.system(size: 18)).bold()
                        
                    }

                }
                .padding(.horizontal, 20)
                
                Text("* Dein Eintrag ist für alle Mitglieder deiner Gemeinde sichtbar!")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 16))

                            
                      
                Spacer()
                
            }
           
            .onPreferenceChange(ViewHeightKey.self) { textEditorHeight = $0 }
            .background(AppConfig.backgroundColor)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Neue Nachricht")
                        .font(.system(size: 25))
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "clear.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                        
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
