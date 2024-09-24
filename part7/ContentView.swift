//
//  ContentView.swift
//  part7
//
//  Created by 檀上航 on 2024/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var isShowThirdView = false
    
    var body: some View {
        NavigationStack{
            VStack {
                Spacer()
                //画面２へのリンク
                NavigationLink(destination: SecondView().navigationTitle("画面２")){
                    Text("Second Viewへ")
                }
                //画面3へのボタン
                Button(){
                    isShowThirdView = true
                } label: {
                    Text("モーダル遷移")
                        .padding()
                }
                .sheet(isPresented: $isShowThirdView){
                    ThirdView(isShowThirdView: $isShowThirdView)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("画面１")
        }
    }
}


