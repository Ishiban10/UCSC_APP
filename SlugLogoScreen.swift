//
//  SlugLogoScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/3/22.
//

import SwiftUI

struct SlugLogoScreen: View {
    var body: some View {
        ZStack {
            Color("FirstBackGround").ignoresSafeArea()
            VStack {
                Image("SlugLogo")
                Spacer()
                    .frame(height:400)
        }
    }
}
}
    
    
struct SlugLogoScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SlugLogoScreen()
        }
    }
}
