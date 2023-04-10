//  userView.swift
//  color display
//
//  Created by Максим Сулим on 06.07.2022.
//

import SwiftUI

var sumInt = 0

struct userView: View {
    var body: some View {
        NavigationView{
            List {
                userAccount()
            }
            .navigationBarTitle(Text("Users"))
            
        }
    
        
        
        
        
    }
}

struct userView_Previews: PreviewProvider {
    static var previews: some View {
        userView()
    }
}
