//
//  ContentView.swift
//  color display
//
//  Created by Максим Сулим on 16.04.2022.
//

import SwiftUI
import Foundation


struct ContentView: View {
    
    //хранение компонент вию
    @State var colorArr = [0.5, 0.5, 0.5]
    @State var randomColorArr = [0.6,0.8,0.5]
    @State var randomColor = Color(red: 0.5, green: 0.5, blue: 0.3)
    @State var resultArr = [0.5, 0.2, 0.3]
    @State var sumInt = 0
    @State var resultRed = 0
    @State var resultGreen = 0
    @State var resultBlue = 0
    @State var alertPrint = false
    @State var giniusPrint = ""
    @State var winnerInt = 0
    
    
    //сравнение дисплеев
    func confirmColor(){
            for i in 0..<resultArr.count {
             resultArr[i] = (round((colorArr[i]/randomColorArr[i])*10000)/100)
                if i == 2 {
                        giniusPrint = ""
                        sumInt = 0
                        resultRed = Int(resultArr[0])
                        resultGreen = Int(resultArr[1])
                        resultBlue = Int(resultArr[2])
                        sumInt = (resultRed+resultGreen+resultBlue)/3
                }
            }
    }

    //генерация цвета дисплея
    func genericRandom(){
        for i in 0..<randomColorArr.count {
            randomColorArr[i] = .random(in: 0...1)
        }
    }

        var body: some View{
            
            VStack() {
                Slider(value: $colorArr[0])
                    .accentColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
                Slider(value: $colorArr[1])
                    .accentColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                Slider(value: $colorArr[2])
                    .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Color(red: colorArr[0], green: colorArr[1], blue: colorArr[2])
                
                randomColor
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                HStack(){
                    Button(action: {
                        genericRandom()
                        self.randomColor = Color(red: randomColorArr[0], green:randomColorArr[1], blue: randomColorArr[2])
                        return
                    }, label: {
                        Text("Generate Color")
                            .foregroundColor(.black)
                    })
                    Spacer()
                        .frame(width: 50)
                    Button(action: {
                        confirmColor()
                        if resultRed == 100 && resultGreen == 100 && resultBlue == 100 {
                            giniusPrint = "YOU GINIUS BRO"
                            sumInt = 1
                        }
                        alertPrint = true
                        return
                    }, label: {
                        Text("Confirm")
                            .foregroundColor(.black)
                    })
                }
                .alert(isPresented: $alertPrint) {
                    Alert(
                        title: Text("\(giniusPrint)"),
                        message: Text("you coincidence: \n Red = \(resultRed)% \n Green = \(resultGreen)% \n Blue = \(resultBlue)%"),
                        primaryButton: .default(Text("Next")){
                        self.genericRandom()
                        self.randomColor = Color(red: randomColorArr[0], green:randomColorArr[1], blue: randomColorArr[2])
                        self.colorArr = [0.5, 0.5, 0.5]
                        return
                    },
                        secondaryButton: .default(Text("back"))
                    )
                }
            
            }
            .padding(.all, 10)
            
            }
        }
        
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View
    {
        if #available(iOS 15.0, *) {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        } else {
            // Fallback on earlier versions
        }
    }
}
