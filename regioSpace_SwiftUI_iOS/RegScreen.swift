//
//  RegScreen.swift
//  regioSpace_SwiftUI_iOS
//
//  Created by Patrick Lanham on 16.08.22.
//

import SwiftUI

struct RegScreen: View {
    var body: some View {
       
        
            VStack {
                Spacer()
                Text("regioSpace")
                    .font(.system(size: 45))
                    .bold()
                    .padding(.horizontal, 50)
                    .padding(.bottom, 20)
                    .foregroundColor(.cyan)
                
                
                
                Text("Damit du in der Gemeinde erkannt wirst, benötigen wir deinen Namen und deine E-Mail Adresse. Deine E-Mail Adresse wird keine andere Person sehen!")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding([.horizontal, .bottom], 15 )
                    .font(.system(size: 14))
                
                
                NavigationLink {
                    
                } label: {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 50)
                        .foregroundColor(.black)
                        .padding(.horizontal, 50)
                        
                        .overlay(
                            HStack {
                                
                                Image(systemName: "applelogo")
                                    .foregroundColor(.white)
                                Text("Apple-ID anmelden")
                                    .foregroundColor(.white)
                                
                            }
                        
                        )
                }
                .padding(.bottom,5)
                
                
                NavigationLink {
                    
                } label: {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 50)
                        .foregroundColor(AppConfig.googleButton)
                        .padding(.horizontal, 50)
                        
                        .overlay(
                            HStack {
                                
                                Image("google")
                                    .resizable()
                                    .foregroundColor(.black)
                                    .frame(width: 20, height: 20)
                                    
                                    .scaledToFit()
                                Text("Mit Google anmelden")
                                    .foregroundColor(.black)
                                
                            }
                        
                        )
                }
                .padding(.bottom,5)
                
                
                NavigationLink {
                    
                } label: {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 50)
                        .foregroundColor(AppConfig.emailButton)
                        .padding(.horizontal, 50)
                        
                        .overlay(
                            HStack {
                                
                                Image(systemName: "email")
                                    .foregroundColor(.white)
                                Text("Mit E-Mail oder Telefon")
                                    .foregroundColor(.white)
                                
                            }
                        
                        )
                }
                .padding(.bottom,50)
                
                
                NavigationLink {
                    ActivityScreen()
                } label: {
                    Text("Ich möchte ohne Registrierung fortfahren")
                        .foregroundColor(.white)
                        .underline()
                        .font(.system(size: 14))
                }
                
                Text("(nicht registrierte Benutzer können nur Beiträge sehen)")
                    .foregroundColor(.white)
                    .font(.system(size: 14))

                
                
                
               

                
                
               

                Spacer()
                
              }
            .background(AppConfig.backgroundColor)
            .ignoresSafeArea()
           
        }
        

    
}

struct RegScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegScreen()
            .previewInterfaceOrientation(.portrait)
    }
}
