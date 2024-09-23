//
//  ThirdView.swift
//  part7
//
//  Created by 檀上航 on 2024/09/23.
//

import SwiftUI

struct ThirdView: View {
    @Binding var isShowThirdView: Bool
    var body: some View {
            ZStack{
                Color(.green)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("ThirdView")
                    Button(){
                        BackContentView()
                    } label: {
                        Text("戻る")
                    }
            }
        }
    }
    
    private func BackContentView(){
        isShowThirdView = false
    }
}

