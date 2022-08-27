//
//  ActivityScreen.swift
//  regioSpace_SwiftUI_iOS
//
//  Created by Patrick Lanham on 21.08.22.
//

import SwiftUI

enum Activity: String {
    
    
    case Events
    case Feste
    case Politik
    case Sport
    case Bildung
    
    
}


struct ActivityScreen: View {
    
    init(){
            UITableView.appearance().backgroundColor = .clear
        }
    
    @State private var activity = Activity.Events
    var body: some View {
        
       
           
            VStack(spacing: 40) {
                Spacer()
                Text("regioSpace")
                    .font(.system(size: 45))
                    .bold()
                    .padding(.horizontal, 50)
                    .foregroundColor(.cyan)
                
                
                Text("Lege fest, ob du in der Gemeinde einer Aktivität nachgehst. Später wollen wir darüber die wichtigsten Nachrichten in den Vordergrund stellen.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal, 15 )
                    .font(.system(size: 14))
                
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 60)
                    .padding(.horizontal, 40)
                    .foregroundColor(AppConfig.containerColor)
                    .overlay(
                Text("Deine Aktivität: \(activity.rawValue)")
                    .foregroundColor(.white)
                )
                Spacer()
                Picker(selection: $activity) {
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
                } label: {
                    
                }
                .pickerStyle(.wheel)
                .frame(height: 80)
                .padding(.horizontal, 40)
                
                Spacer()
                NavigationLink {
                    MainView()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.cyan)
                            .frame(height: 60)
                        Text("Weiter")
                            .foregroundColor(.white).font(.system(size: 18)).bold()
                        
                    }
                   
                        
                    
                }
                .padding(.horizontal, 40)
                Spacer()
                

           
        }
            .background(AppConfig.backgroundColor)
            
            
        
        
        
    }
}

struct ActivityScreen_Previews: PreviewProvider {
    static var previews: some View {
        ActivityScreen()
    }
}
