//
//  BusLinesScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/30/22.
//

import SwiftUI

struct BusLinesScreen: View {
    @State var backbutton = false
    @State var show10 = false
    @State var show15 = false
    @State var show18 = false
    @State var show19 = false
    @State var show20 = false
    @State var show22 = false
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

                    
                    Text("Bus Lines")
                        .font(.system(size: 30))
                        .frame(alignment: .center)
                
                Button(action: {
                    withAnimation(.easeOut) {
                        show10.toggle()
                    }

                }) {
                    Text("Line 10")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $show10) {
                    NavigationView {
                        WebViewLine10(url: "http://www.scmtd.com/en/routes/schedule/map/202220/10")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        show15.toggle()
                    }
                }) {
                    Text("Line 15")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $show15) {
                    NavigationView {
                        WebViewLine15(url: "http://www.scmtd.com/en/routes/schedule/map/202220/15")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        show18.toggle()
                    }
                }) {
                    Text("Line 18")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $show18) {
                    NavigationView {
                        WebViewLine18(url: "http://www.scmtd.com/en/routes/schedule/map/202220/18")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        show19.toggle()
                    }
                }) {
                    Text("Line 19")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $show19) {
                    NavigationView {
                        WebViewLine19(url: "http://www.scmtd.com/en/routes/schedule/map/202220/19")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        show20.toggle()
                    }

                }) {
                    Text("Line 20")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $show20) {
                    NavigationView {
                        WebViewLine20(url: "http://www.scmtd.com/en/routes/schedule/map/202220/20")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        show22.toggle()
                    }
                }) {
                    Text("Line 22")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $show22) {
                    NavigationView {
                        WebViewLine22(url: "http://www.scmtd.com/en/routes/schedule/map/202220/22")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                .cornerRadius(30)
                .shadow(radius: 10)


                Spacer()
            }
            if backbutton {
                TravelScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
            }

    }
}

struct BusLinesScreen_Preview: PreviewProvider {
    static var previews: some View {
        Group{
            BusLinesScreen()
        }
    }
}
