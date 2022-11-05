//
//  SwiftUIView.swift
//  UIKadai1chayamada
//
//  Created by 山田　天星 on 2022/11/05.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            Spacer()

            VStack(alignment: .trailing) {
                Text("知性の自転車")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("Bycycle for the mind")
                    .italic()
                    .offset(x: -10, y: 0)
            }
            .padding(.top, 80)
            Spacer()

            VStack(alignment: .trailing) {
                Text("憐れみは恋の始まり")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                Text("Pity is akin to love")
                    .italic()
                    .offset(x: -10, y: 0)
            }
            .padding(.top, 20)
            Spacer()

        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
