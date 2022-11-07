//
//  ScrollSection.swift
//  AITrainer
//
//  Created by 안병욱의 mac on 2022/10/26.
//

import SwiftUI

struct ScrollSection: View {
    @State var title = "Leg"
    
    @State var images: [String] = ["justsquat", "justdeadlift","justpullup","justbarbellrow","justshoulderpress","justoverheadpress","justlateralraise","justinclinepress","justdips"]
    
    @State var name: [String] = ["squat", "deadlift", "pullup", "barbellrow", "shoulderpress", "overheadpress","lateralraise","inclinepress","dips"]
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal, 20)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20.0){
                    ForEach(images.indices, id: \.self) {index in
                        NavigationLink{
                            if images[index] == "justsquat"
                                //수정한 부분
                            {SquatDescriptionView().navigationViewStyle(StackNavigationViewStyle())}
                            else if images[index] == "justdeadlift"
                            {DeadliftDescriptionView().navigationViewStyle(StackNavigationViewStyle())}
                            else if images[index] == "justinclinepress"
                            {InclinepressDescriptionView().navigationViewStyle(StackNavigationViewStyle())}
                            else if images[index] == "justdips"
                            {DipsDescriptionView().navigationViewStyle(StackNavigationViewStyle())}
                            else if images[index] == "justshoulderpress"
                            {ShoulderpressDescriptionView().navigationViewStyle(StackNavigationViewStyle())}
                            else if images[index] == "justoverheadpress"
                            {OverheadpressDescriptionView().navigationViewStyle(StackNavigationViewStyle())}
                            else if images[index] == "justlateralraise"
                            {LateralraiseDescriptionView().navigationViewStyle(StackNavigationViewStyle())}
                            else if images[index] == "justpullup"
                            {PullupDescriptionView().navigationViewStyle(StackNavigationViewStyle())}
                            else if images[index] == "justbarbellrow"
                            {BarbellrowDescriptionView().navigationViewStyle(StackNavigationViewStyle())}
                            else
                            {FreeDescriptionView().navigationViewStyle(StackNavigationViewStyle())}
                        }
                        label : {
                            VStack{
                                Image(images[index])
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                    .cornerRadius(20)
                                if images[index] == "justsquat"
                                {Text("Squat")
                                    .foregroundColor(.white)}
                                else if images[index] == "justdeadlift"
                                {Text("Dead lift")
                                    .foregroundColor(.white)}
                                else if images[index] == "justpullup"
                                {Text("Pull up")
                                    .foregroundColor(.white)}
                                else if images[index] == "justbarbellrow"
                                {Text("Barbell row")
                                    .foregroundColor(.white)}
                                else if images[index] == "justinclinepress"
                                {Text("Incline press")
                                    .foregroundColor(.white)}
                                else if images[index] == "justdips"
                                {Text("Dips")
                                    .foregroundColor(.white)}
                                else if images[index] == "justshoulderpress"
                                {Text("Shoulder press")
                                    .foregroundColor(.white)}
                                else if images[index] == "justoverheadpress"
                                {Text("Overhead press")
                                    .foregroundColor(.white)}
                                else if images[index] == "justlateralraise"
                                {Text("Side lateral raise")
                                    .foregroundColor(.white)}
                                else
                                {Text("Free posture")
                                    .foregroundColor(.white)}
                            }
                        }
                    }
                }
                .offset(x: 20)
                .padding(.trailing, 40)
            }
        }
    }
}
struct ScrollSection_Previews: PreviewProvider {
    static var previews: some View {
        ScrollSection()
    }
}