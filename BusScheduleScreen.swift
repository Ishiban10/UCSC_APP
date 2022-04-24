//
//  BusScheduleScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/3/22.
//

import SwiftUI

struct BusScheduleScreen: View {
    @State var backbutton = false
    @State var showCowStev = false
    @State var showC910 = false
    @State var showSciencehill = false
    @State var showKresge = false
    @State var showRCC = false
    @State var showOakes = false
    var body: some View {
        ZStack {
            Color(white: 1.0).ignoresSafeArea()
            ScrollView {
                LazyVStack {
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

                        
                        Text("Bus Stops")
                            .font(.system(size: 30))
                            .frame(alignment: .center)
                    
                    Group {
                        
                    
                        Button(action: {
                            if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=5085774092847602956&ll=36.970794,-122.024686&lsp=9902&q=Santa%20Cruz%20Metro%20Center%20(Pacific%20Station)&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQDgoECFkQAQoFCKQBEAESJCnfNxmwP3xCQDGQ+usVloFewDmn8tE9RnxCQEEsnQ/PkoFewA%3D%3D") {
                               UIApplication.shared.open(url)
                            }
                        }) {
                            Text("Santa Cruz Metro Station")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 18))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        
                        Button(action: {
                            if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=107325673334090030&ll=36.994263,-122.055511&lsp=9902&q=Hagar%20Dr%20(UCSC%20-%20East%20Field%20House)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQAgoFCKQBEAESJClV8rG7QH9CQDEQk3Ahj4NewDkdrWpJR39CQEGsNZTai4NewA%3D%3D") {
                               UIApplication.shared.open(url)
                            }
                        }) {
                            Text("East Field House")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showCowStev.toggle()
                            }

                        }) {
                            Text("Bookstore, Cowell/Stevenson")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 15))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        Button(action: {
                            if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=4370539920123790006&ll=36.999006,-122.055233&lsp=9902&q=McLaughlin%20Dr%20(UCSC%20-%20Crown%20%26%20Merrill%20College)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQBgoFCKQBEAESJCkO9iAl3H9CQDGzLq6SioNewDnWsNmy4n9CQEFP0dFLh4NewA%3D%3D") {
                               UIApplication.shared.open(url)
                            }
                        }) {
                            Text("Crown/Merril")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showC910.toggle()
                            }

                        }) {
                            Text("College 9/10, Health Ctr")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showSciencehill.toggle()
                            }

                        }) {
                            Text("Science Hill")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showKresge.toggle()
                            }

                        }) {
                            Text("Kresge")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        Button(action: {
                            if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=1260229117504708312&ll=36.996869,-122.063589&lsp=9902&q=Heller%20Dr%20(UCSC%20-%20Kerr%20Hall)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQBgoFCKQBEAESJCllE0ghln9CQDGzLg58E4RewDktzgCvnH9CQEFP0TE1EIRewA%3D%3D") {
                               UIApplication.shared.open(url)
                            }
                        }) {
                            Text("Kerr Hall")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showRCC.toggle()
                            }

                        }) {
                            Text("Rachel Carson")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    }
                    
                    Group {
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showOakes.toggle()
                            }

                        }) {
                            Text("Oakes")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        
                        
                        Button(action: {
                            if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=8574480871198846089&ll=36.977687,-122.053593&lsp=9902&q=Bay%20%26%20High%20(UCSC%20-%20Main%20Gate)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQBgoFCKQBEAESJCke10GRIX1CQDGqjmKzb4NewDnmkfoeKH1CQEFGMYZsbINewA%3D%3D") {
                               UIApplication.shared.open(url)
                            }
                        }) {
                            Text("Bay & High")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        
                        Button(action: {
                            if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=14320505721034620708&ll=36.974297,-122.050400&lsp=9902&q=Bay%20Dr%20%26%20Iowa%20Dr%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQAQoFCKQBEAESJCk/br98snxCQDGsHFpkO4NewDkHKXgKuXxCQEFIv30dOINewA%3D%3D") {
                               UIApplication.shared.open(url)
                            }
                        }) {
                            Text("Bay & Iowa")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        .padding(.bottom)
                    }

                    
                    

                    
                    Spacer()
                        .frame(height: 20)
        }
            }
            if backbutton {
                TravelScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
            
            if showCowStev {
                CowStevStops()
                    .transition(AnyTransition.move(edge: .trailing))
            }
            
            if showC910 {
                C910Stops()
                    .transition(AnyTransition.move(edge: .trailing))
            }
            
            if showSciencehill {
                ScienceHillStops()
                    .transition(AnyTransition.move(edge: .trailing))
            }
            
            if showKresge {
                KresgeStops()
                    .transition(AnyTransition.move(edge: .trailing))
            }
            
            if showRCC {
                RCCStops()
                    .transition(AnyTransition.move(edge: .trailing))
            }
            
            if showOakes {
                OakesStop()
                    .transition(AnyTransition.move(edge: .trailing))
            }
}
    }
}


struct BusScheduleScreen_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            BusScheduleScreen()
        }
    }
}
