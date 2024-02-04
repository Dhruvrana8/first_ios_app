//
//  ContentView.swift
//  First App
//
//  Created by Dhruv Rana on 04/02/24.
//

import SwiftUI

struct ContentView: View {
    let carouselImages = ["Boy", "Dhruv"]
    var body: some View {
        ZStack {
            TabView {
                        ForEach(carouselImages, id: \.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                .tag(imageName)
                                .ignoresSafeArea()
                        }
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always)).ignoresSafeArea()
            VStack{
                Spacer()
                Text("My First App !!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
