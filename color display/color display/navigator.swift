//
//  navigator.swift
//  color display
//
//  Created by Максим Сулим on 03.08.2022.
//

import SwiftUI

struct navigator: View {
    
    
    
    var body: some View {
        NavigationView {
            VStack {
            HStack {
                NavigationLink(destination: userView()
                    ){
                    Image(systemName: "person.circle")
                        .foregroundColor(Color.black)
                }
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
                
                
                Spacer()
                
                Text("Color DisPlay")
                
                Spacer()
                NavigationLink(destination: ContentView()
                    ){
                        Image(systemName: "gamecontroller.fill")
                            .foregroundColor(Color.black)
                }
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
                
                
                
            }
            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
            .position(x: 190, y: 50)
            
                Text("Color DisPlay")
                
            
            }
            
        }
        

    }
}

struct navigator_Previews: PreviewProvider {
    static var previews: some View {
        navigator()
    }
}
