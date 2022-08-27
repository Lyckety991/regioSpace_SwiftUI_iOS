//
//  ContentView.swift
//  regioSpace_SwiftUI_iOS
//
//  Created by Patrick Lanham on 16.08.22.
//

import SwiftUI

struct WelcomeScreen: View {
    
    @State private var textFieldInput = ""
    
    private var nextButton: Bool {
        return textFieldInput.isEmpty
    }
    
    
    
    var body: some View {
       
        NavigationView {
            
           
                
                VStack {
                       Spacer()
                    
                              Text("regioSpace")
                                  .font(.system(size: 45))
                                  .bold()
                                  .padding(.horizontal, 50)
                                  .padding(.bottom, 20)
                                  .foregroundColor(.cyan)
                              
                              Text("Damit wir dich einer Gemeinde zuordnen können, wähle bitte deinen Wohnort aus:")
                                  .multilineTextAlignment(.center)
                                  .foregroundColor(.white)
                                  .padding([.horizontal, .bottom], 42)
                                  .font(.system(size: 14))
                   
                              
                              RoundedRectangle(cornerRadius: 20)
                                  .frame(height: 60)
                                  .padding(.horizontal, 40)
                                  .foregroundColor(AppConfig.containerColor)
                                  .overlay(
                                    HStack {
                                        
                                        Image("DE")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                        
                                        Text("Deutschland")
                                            .foregroundColor(.white)
                                            .font(.system(size: 16))
                                            .padding(.trailing, 150)
                                        
                                    }
                                  )
                        
                        
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 60)
                            .padding(.horizontal, 40)
                            .foregroundColor(AppConfig.containerColor)
                            .overlay(
                            TextField("Bitte gebe deinen Wohnort ein:", text: $textFieldInput)
                                .font(.system(size: 16))
                                .padding(.horizontal, 50)
                                .foregroundColor(.white)
                            
                            )
                    
                        
                        Spacer()
                        
                        
                        NavigationLink {
                            RegScreen()
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(.cyan)
                                    .frame(height: 60)
                                Text("Weiter")
                                    .foregroundColor(.white).font(.system(size: 18)).bold()
                                
                            }
                           
                                
                            
                        }
                        .disabled(nextButton)
                        .padding(.horizontal, 40)
                       

                        HStack(spacing: 30) {
                            Button {
                                
                            } label: {
                                Text("Impressum")
                                    .foregroundColor(.gray)
                            }
                            Button {
                                
                            } label: {
                                Text("Datenschutz")
                                    .foregroundColor(.gray)
                            }
                            Button {
                                
                            } label: {
                                Text("Hilfe")
                                    .foregroundColor(.gray)
                            }

                        }
                        .padding(.bottom, 40)
                        .padding(.top, 20)
                   
                        
                        
                               
                           
                }
                .background(AppConfig.backgroundColor)
                .ignoresSafeArea()
            }
        
        
       
           
          
                
        }
    
    private func checkCity() {
        
        if textFieldInput.isEmpty {
            
        }
        
    }
        
        
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
