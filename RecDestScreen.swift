//
//  RecDestScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/30/22.
//

import SwiftUI

struct RecDesScreen: View {
    @State var backbutton = false
    @State var showAthCen = false
    @State var showGroceries = false
    @State var showBeaches = false
    @State var showLocalRes = false
    @State var showThrift = false
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

                    
                    Text("Poplar Destinations")
                        .font(.system(size: 30))
                        .frame(alignment: .center)
                Group {
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=1156%20High%20St,%20Santa%20Cruz,%20CA%20%2095064,%20United%20States&auid=16284094599886211693&ll=36.995739,-122.058838&lsp=9902&q=UCSC&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhANCgQIChAACgQIUhAHCgQIVRAKCgQIWRAGCgUIpAEQARImKdquL0n0fkJAMWp1i9khhF7AOViEVaUagEJAQaxgxJFpg17AUAQ%3D") {
                       UIApplication.shared.open(url)
                    }
                   
                }) {
                    Text("UCSC Main Campus")
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
                    withAnimation(.easeOut){
                        showAthCen.toggle()
                    }
                }) {
                    Text("Athletics Centers")
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
                    withAnimation(.easeOut){
                        showGroceries.toggle()
                    }

                }) {
                    Text("Groceries")
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
                    withAnimation(.easeOut){
                        showBeaches.toggle()
                    }

                }) {
                    Text("Beaches")
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
                    withAnimation(.easeOut){
                        showLocalRes.toggle()
                    }

                }) {
                    Text("Local Restaurants")
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
                    withAnimation(.easeOut){
                        showThrift.toggle()
                    }

                }) {
                    Text("Thrift Stores")
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
                    if let url = URL(string: "https://maps.apple.com/?address=1156%20High%20St,%20Santa%20Cruz,%20CA%20%2095064,%20United%20States&auid=245639666958305372&ll=36.982381,-122.059844&lsp=9902&q=Arboretum%20at%20the%20University%20of%20California,%20Santa%20Cruz&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhAZCgQIChAACgQIUhAHCgQIVRANCgQIWRABCgUIpAEQARIkKV++liQ0ckJAMXIWjqwMi17AOQsGgadFiUJAQY7pcUecfF7A") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("Arboretum")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .frame(width: 300, height: 50)
                .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                .cornerRadius(30)
                .shadow(radius: 10)


                Spacer()
                }
            }
            if backbutton {
                TravelScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
            if showAthCen {
                AthCenScreen()
                    .transition(AnyTransition.move(edge: .trailing))
                
            }
            if showGroceries {
                GroceriesScreen()
                    .transition(AnyTransition.move(edge: .trailing))
            }
            if showBeaches {
                BeachesScreen()
                    .transition(AnyTransition.move(edge: .trailing))
            }
            if showLocalRes {
                LocalResScreen()
                    .transition(AnyTransition.move(edge: .trailing))
            }
            if showThrift {
                ThriftScreen()
                    .transition(AnyTransition.move(edge: .trailing))
                
            }
            }

        
        
        
    }
}

struct RecDestScreen_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            RecDesScreen()
        }
    }
}
