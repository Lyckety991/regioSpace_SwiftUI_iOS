//
//  MainView.swift
//  regioSpace_SwiftUI_iOS
//
//  Created by Patrick Lanham on 23.08.22.
//

import SwiftUI

struct MainView: View {
    
    @State private var cellText = "fnsnfwnefwekflkwekfwklfklwefnkwlenfmwenfkweflwejflknwenfklweklfsbjsdfjjfjfjbsdjbbsjfbsbdjkfsdbfbsdfbsdbjfbsdbfsdhjfhsjdbfhjsdbfhbsdbfhjsdbfbsdbfhsdhfbjhsdbfbsdhjfbsdbfhjsbdfhbsdbfhjsdbfhbsdhfbhsdbfhjsdbfhbsdhfbsdhbfsdbfbsdbfhjsdd"
    @State private var readText = 5
    @State private var showSettings = false
    @State private var showNewPostMenu = false
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            HStack(spacing: 30) {
              
                Circle()
                    .strokeBorder(.secondary, lineWidth: 2)
                    .frame(width: 70, height: 70)
                VStack(alignment: .leading) {
                    
                    Text("Patrick Lanham")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .bold()
                    Text("96450 Coburg")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                   
                }
                .padding(.horizontal)
                
                Button {
                    showSettings.toggle()
                } label: {
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.gray)
                }
                .sheet(isPresented: $showSettings) {
                    SettingsScreen()
                }
               
                
            }
            
            HStack {
                
            Button {
                    showNewPostMenu.toggle()
                } label: {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.cyan)
                        .frame(height: 50)
                        .padding(.horizontal, 50)
                        
                        .overlay(
                        Text("Neue Nachricht")
                            .foregroundColor(.white)
                            .bold()
                        
                        )
                }
                .sheet(isPresented: $showNewPostMenu) {
                    NewMessageScreen()
                }
                
               
                
                
            }
            
            List {
                   
                VStack(alignment: .leading, spacing: 10) {
                            HStack(spacing: 10) {
                                Circle()
                                    .frame(width: 25, height: 25)
                                Text("Patrick Lanham")
                                    .font(.system(size: 13))
                                Spacer()
                            }
                         Text("Politik")
                        .bold()
                        .font(.system(size: 15))
                        .foregroundColor(.cyan)
                                
                                
                          Text(cellText)
                                .multilineTextAlignment(.leading)
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.system(size: 14))
                    Text("Erstellt am: 24.08.2022 um 14:31")
                        .font(.system(size: 10))
                        .foregroundColor(.secondary)
                    
                    Divider()
                    
                    HStack(spacing: 50) {
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bolt.circle.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.red)
                        }
                        
                      
                            HStack {
                                
                            Image(systemName: "bubble.left.and.bubble.right.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.cyan)
                                Text("Kommentieren")
                                    .font(.system(size: 10))
                                    .foregroundColor(.cyan)
                                
                                    .overlay(
                                        Button(action: {
                                            print("Pressed")
                                        }, label: {
                                            
                                        })
                                    
                                    )
                            
                            
                        }
                        
                        Button {
                            print("Read")
                        } label: {
                            HStack {
                            Image(systemName: "message.and.waveform.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.cyan)
                                Text("Gelesen \(readText)")
                                    .font(.system(size: 10))
                                    .foregroundColor(.cyan)
                            }
                        }
                        
                        

                        
                    }
                                
                    
                   
                    
                  
                            
                        }
                    
                    
                    
                
            }
            
            
            
            
            

           
            
            Spacer()
            Text("Erfahre mehr über regioSpace")
                .foregroundColor(.white)
                .underline()
        }
        .navigationBarHidden(true)
        .background(AppConfig.backgroundColor)
        
    }
        
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
