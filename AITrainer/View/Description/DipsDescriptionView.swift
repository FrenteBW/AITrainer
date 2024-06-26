//
//  DipsDescriptionView.swift
//  AITrainer
//
//  Created by 안병욱의 mac on 2022/10/26.
//

import SwiftUI

struct DipsDescriptionView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack(spacing: 0.0){
                    HStack{
                        CircleButton(action: {
                            dismiss()
                        }, image: "arrow.left")
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 60, leading: 10, bottom: 0, trailing: 20))
                    
                    Text("Notice")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))

                    ScrollView(.vertical, showsIndicators: false){
                        Text(Descriptions.DipsDescription)
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.top, 50)
                            .padding(.horizontal, 10)
                    }
                    NavigationLink{
                        DipsMainView().navigationViewStyle(StackNavigationViewStyle())
                    } label: {
                        LargeButton()
                            .padding(.bottom, 30)
                            .padding(.horizontal, 20)
                    }
                }
                .frame(maxHeight: .infinity, alignment: .top)
                .offset(x: 20)
                .padding(.trailing, 40)
            }
            .background(Color("backgroundColor2"))
            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
    }
}
