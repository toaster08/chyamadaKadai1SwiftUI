//
//  ContentView.swift
//  UIKadai1chayamada
//
//  Created by 山田　天星 on 2022/11/04.
//

import SwiftUI

struct ContentView: View {
    // Conflict目的のコメントXXXXXX
    @State private var text1: String = ""
    @State private var text2: String = ""
    @State private var text3: String = ""
    @State private var text4: String = ""
    @State private var text5: String = ""

    private var result: Int? {
        guard let number1 = Int(text1),
              let number2 = Int(text2),
              let number3 = Int(text3),
              let number4 = Int(text4),
              let number5 = Int(text5)else {
                  return nil
              }
        
        let result = number1 + number2 + number3 + number4 + number5
        return result
    }
    
    @State private var resultString: String = ""
    
    var body: some View {
        VStack(spacing: 15.0) {
            VStack {
                TextField("数字を入力してください",
                          text: $text1)
                TextField("数字を入力してください",
                          text: $text2)
                TextField("数字を入力してください",
                          text: $text3)
                TextField("数字を入力してください",
                          text: $text4)
                TextField("数字を入力してください",
                          text: $text5)
                //Placeholder
            }
            .multilineTextAlignment(.trailing)
            
            Button {
                print("button tapped")
                if let result = result {
                    resultString = String(result)
                } else {
                    resultString = "計算できません"
                }
                
            } label: {
                Text("Sum up")
                    .font(.title)
                    .frame(width: 200,
                           height: 60,
                           alignment: .center)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(15, antialiased: true)
            }
            .padding()
            
            HStack {
                Text("Result")
                    .font(.title)
                Spacer()
                Text(resultString)
                    .font(.body)
                    .lineLimit(1)
            }
        }
        .textFieldStyle(.roundedBorder)
        .frame(width: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
