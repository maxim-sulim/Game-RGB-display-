//
//  userAccount.swift
//  color display
//
//  Created by Максим Сулим on 06.07.2022.
//

import SwiftUI


class Gamer {
    
    var nameGamer = ""
    var mailGamer = ""
    var winnGamer = 0
    
}

let gamer1 = Gamer()
let gamer2 = Gamer()


struct userAccount: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 70, height: 70)
            
            VStack(alignment: .leading) {
                Text("Max")
                    .font(.title)
                Text("герой меча и магии")
                    .font(.footnote)
                    .fontWeight(.light)
            }
            Spacer()
            Text("winner: \(sumInt)")
        }
        .padding(/*@START_MENU_TOKEN@*/.all, 5.0/*@END_MENU_TOKEN@*/)
    }
}

struct userAccount_Previews: PreviewProvider {
    static var previews: some View {
        userAccount()
    }
}
