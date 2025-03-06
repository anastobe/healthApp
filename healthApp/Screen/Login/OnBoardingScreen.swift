////
////  OnBoardingScreen.swift
////  healthApp
////
////  Created by Peter on 06/03/2025.
////
//
//import SwiftUI
//
//struct OnBoardingScreen: View {
//    var body: some View {
//        Text("OnBoardingScreen")
//    }
//}
//
//#Preview {
//    OnBoardingScreen()
//}


import SwiftUI

struct OnBoardingScreen: View {
    @State private var selectPage = 0

    @State var pageArr = [
        ["title": "Exercises",
         "subtitle": "To Your Personalized Profile",
         "image": "hondaDealer"],

        ["title": "Keep Eye On HealthTracking",
         "subtitle": "Log & reminder your activities",
         "image": "profile"],

        ["title": "Check Your Progress",
         "subtitle": "An tracking calendar",
         "image": "sofa"]
    ]

    var body: some View {
        ZStack(alignment: .center) {
            TabView(selection: $selectPage.animation()) {
                ForEach(0..<pageArr.count, id: \.self) { index in
                    let iObj = pageArr[index]
                    
                    VStack {
                        Image(iObj["image"] ?? "")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)

                        Text(iObj["title"] ?? "")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top, 20)

                        Text(iObj["subtitle"] ?? "")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 40)
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))

            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        if selectPage < pageArr.count - 1 {
                            selectPage += 1
                        }
                    }) {
                        Text(selectPage == pageArr.count - 1 ? "Get Started" : "Next")
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.trailing, 20)
                }
                .padding(.bottom, 20)
            }
        }
    }
}

struct OnBoardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreen()
    }
}
