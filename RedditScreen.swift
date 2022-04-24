//
//  RedditScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 2/3/22.
//

import SwiftUI

struct RedditScreen:View {
    @State var backbutton = false
    @State var showUCRedd = false
    @State var showSlugRedd = false
    var body: some View {
        ZStack {
            Color(white: 1.0).ignoresSafeArea()
            VStack {
                Spacer()
                    .frame(height: 30)
                HStack {
                    Button(action: {
                        withAnimation(.easeOut){
                            backbutton.toggle()
                        }
                    }) {
                        Text("< Back")
                            .font(.system(size:20))
                    }
                    .frame(width: 70, height: 50, alignment: .center)
                    .background(Color.white)
                    .padding(.leading, 10)
                    
                    Spacer()
                    
                }

                    
                    Text("UCSC Reddits")
                        .font(.system(size: 30))
                        .frame(alignment: .center)
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showUCRedd.toggle()
                    }
                }) {
                    Text("UCSC Main Reddit")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showUCRedd) {
                    NavigationView {
                        WebViewUCRedd(url: "https://www.reddit.com/r/UCSC/")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showSlugRedd.toggle()
                    }
                }) {
                    Text("Slug Central Reddit")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showSlugRedd) {
                    NavigationView {
                        WebViewSlugRedd(url: "https://www.reddit.com/r/SlugCentral/")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                .cornerRadius(30)
                .shadow(radius: 10)
                


                Spacer()
            }
            if backbutton {
                HomeScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
            }
    }
}

struct RedditScreen_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            RedditScreen()
        }
    }
}
