//
//  ContentView.swift
//  Shared
//
//  Created by Jeremy Christian Stowers on 3/15/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var cityVm = CityViewViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVm)
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVm)
                }
            }.padding(.top, 30)
        }.background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6050806046, green: 0.8078469634, blue: 0.9820559621, alpha: 1)), Color(#colorLiteral(red: 0.4927015901, green: 0.6170919538, blue: 0.9509068131, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
