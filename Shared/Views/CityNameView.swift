//
//  CityNameView.swift
//  Find The Weather (iOS)
//
//  Created by Jeremy Christian Stowers on 4/12/21.
//

import SwiftUI

struct CityNameView: View {
    var city: String
    var date: String
    
    var body: some View {
        HStack {
            VStack(alignment: .center, spacing: 10) {
                Text(city)
                    .font(.title)
                    .bold()
                Text(date)
            }.foregroundColor(.white)
        }
    }
}

struct CityNameView_Previews: PreviewProvider {
    static var previews: some View {
        CityNameView(city: <#String#>, date: <#String#>)
    }
}

// 04/12 stopped at 1:38:27. Mine is requiring that I provide city and date within the CityNameView part of line 28 but not on his. Why?
