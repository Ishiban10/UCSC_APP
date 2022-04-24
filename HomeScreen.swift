//
//  HomeScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 12/28/21.
//

import SwiftUI

struct HomeScreen: View {
    @State var showPortal = false
    @State var showMail = false
    @State var showEvents = false
    @State var showMaps = false
    @State var showAcademicInfo = false
    @State var showHealth = false
    @State var showBus = false
    @State var showSSS = false
    @State var showAdvising = false
    @State var showReddit = false
    @State var showHousing = false
    @State var showLib = false
    @State var showDin = false
    @State var showStore = false
    var body: some View {
        // start copy from here
        ZStack {
            Color(white: 1.0).ignoresSafeArea()
            ScrollView {
                LazyVStack(spacing: 1) {
                    Group {
                    
                    Spacer()
                        .frame(height: 50)

                    Text("Slug Central")
                        .padding(.all)
                        .font(.system(size: 40))
                        .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                        .foregroundColor(Color.white)
                        .clipShape(Capsule())
                        
                    Divider()
                        .frame(height:20)
                    }

                    Group {
                    HStack (alignment: .center, spacing: 1) {
                        
                        Button(action: {
                            withAnimation(.easeOut) {showPortal.toggle()}
                        }) {
                            Text("Student Portal")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 25))
                                .frame(width:140, height: 100)
                        }
                        .sheet(isPresented: $showPortal) {
                            NavigationView {
                                    WebViewPortal(url:"https://my.ucsc.edu/psp/csprd/?cmd=login&languageCd=ENG")
                                }
                            }
                        
                        .frame(width: 170, height: 130)
                        .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        .padding(.all)
                    
                        Button(action: {
                            withAnimation(.easeOut) {showMail.toggle()}
                        }) {
                            Text("Slug Mail")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 25))
                                .frame(width:100, height:100)
                        }
                        .sheet(isPresented: $showMail) {
                            NavigationView {
                                WebViewMail(url: "https://mail.google.com/mail/u/0/#inbox")
                            }
                        }
                        
                        .frame(width: 135, height: 130)
                        .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        .padding(.trailing, 20)
                    }
                        HStack(alignment: .center, spacing: 20) {
                            Button(action: {
                                withAnimation(.easeOut) {showEvents.toggle()}
                            }) {
                                Text("Events/Activities")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 25))
                                    .frame(width:110, height:120)
                                
                            }
                            .frame(width: 140, height: 150)
                            .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            .padding(.leading, 15)
                           
                    
                                
                            Button(action: {
                                withAnimation(.easeOut){
                                    showAcademicInfo.toggle()
                                }
                            }) {
                                Text("Academic Information")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 25))
                                    .frame(width:130,height: 100)
                            }
                            .frame(width: 160, height: 130)
                            .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            .padding(.trailing, 20)
                    }
                    }
                    Group {
                    HStack(alignment: .center, spacing: 20) {
                        Button(action: {
                            withAnimation(.easeOut){
                                showAdvising.toggle()
                            }
    
                        }) {
                            Text("Advising")
                                .foregroundColor(Color.white)
                                .font(.system(size: 25))
                                .frame(width: 110, height: 100)
                        }
                        .frame(width: 140, height: 130)
                        .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        .padding([.top, .bottom, .leading])
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showSSS.toggle()
                            }
                        }) {
                            Text("Student Support Services")
                                .foregroundColor(Color.white)
                                .font(.system(size: 25))
                                .frame(width:130, height:110)
                        }
                        .frame(width: 160, height: 140)
                        .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        .padding(.trailing, 20)
                        

                    }
                    HStack(alignment: .center, spacing: 20) {
                        Button(action: {
                            withAnimation(.easeOut) {
                                showLib.toggle()
                            }
                        }) {
                            Text("Library")
                                .foregroundColor(Color.white)
                                .font(.system(size: 25))
                                .frame(width:100, height: 120)
                        }
                        .sheet(isPresented: $showLib) {
                            NavigationView {
                                WebViewLib(url: "https://library.ucsc.edu")
                            }
                        }
                        
                        .frame(width: 130, height: 150)
                        .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        .padding([.bottom, .leading])
                        
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showDin.toggle()
                            }
                            
                        }) {
                            Text("Dining")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 25))
                                .frame(width: 140, height:110)
                        }
                        .sheet(isPresented: $showDin) {
                            NavigationView {
                                WebViewDin(url: "https://dining.ucsc.edu/eat/index.html")
                            }
                        }
                        
                        .frame(width: 170, height: 140)
                        .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        .padding([.bottom, .trailing])
                    }
                }
                        
                    Group {
                        HStack(alignment: .center, spacing: 20) {
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showMaps.toggle()
                                }
                            }) {
                                Text("Maps")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 25))
                                    .frame(width:120, height:90)
                            }
                            .frame(width: 150, height: 120)
                            .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            .padding([.leading, .bottom])
                            
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showBus.toggle()
                                }
                            }) {
                                Text("Travel")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 25))
                                    .frame(width:120, height: 110)
                            }
                            .frame(width: 150, height: 140)
                            .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            .padding(.trailing)
                        }
                        HStack(alignment: .center, spacing: 20) {
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showStore.toggle()
                                }
                            
                            }) {
                                Text("Slug Store")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 25))
                                    .frame(width:120, height:120)
                            }
                            .sheet(isPresented: $showStore) {
                                NavigationView {
                                    WebViewStore(url: "https://slugstore.ucsc.edu")
                                }
                            }
                            
                            .frame(width: 150, height: 150)
                            .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            .padding(.leading)
                            
                            Button(action: {
                                withAnimation(.easeOut){
                                    showHealth.toggle()
                                }
                            }) {
                                Text("Student Health Services")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 25))
                                    .frame(width: 120, height: 100)
                            }
                            .frame(width: 150, height: 130)
                            .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            .padding([.trailing, .top])
                        }

                    }
                    
                    Group {

                        HStack (alignment: .center, spacing: 1) {
                            Button(action: {
                                withAnimation(.easeOut){
                                    showReddit.toggle()
                                }

                            }) {
                                Text("UCSC Reddit")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 25))
                                    .frame(width:125, height: 100)
                            }
                            .frame(width: 155, height: 130)
                            .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            .padding(.all)

                            Button(action: {
                                withAnimation(.easeOut){
                                    showHousing.toggle()
                                }
                            }) {
                                Text("Housing")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 25))
                                    .frame(width:122, height:100)
                            }
                            .frame(width: 150, height: 130)
                            .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            .padding(.trailing, 20)
                        }




                        Spacer()
                            .frame(height:20)
                    }
                    
                    
                }
        }
            Group {
                if showEvents {
                    EventCalendarScreen()
                    .transition(AnyTransition.move(edge: .trailing))
                }
                if showMaps {
                    MapsScreen()
                    .transition(AnyTransition.move(edge: .trailing))
                }
            }
            
            Group {
                if showAcademicInfo {
                    AcademicInfoScreen()
                        .transition(AnyTransition.move(edge: .trailing))
                }
                if showHealth {
                    HealthServicesScreen()
                        .transition(AnyTransition.move(edge: .trailing))
                }
            }
            
            Group {
                if showBus {
                    TravelScreen()
                        .transition(AnyTransition.move(edge: .trailing))
                }
                if showSSS {
                    SSSScreen()
                        .transition(AnyTransition.move(edge: .trailing))
                }
            }
            
            Group {
                if showAdvising {
                    AdvisingScreen()
                        .transition(AnyTransition.move(edge: .trailing))
                }
                
                if showReddit {
                    RedditScreen()
                        .transition(AnyTransition.move(edge: .trailing))
                }

                if showHousing {
                    HousingScreen()
                        .transition(AnyTransition.move(edge: .trailing))
                }
            }

    }
}
}
struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeScreen()
        }
    }
}

