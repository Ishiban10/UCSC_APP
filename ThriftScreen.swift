//
//  ThriftScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/30/22.
//

import SwiftUI

struct ThriftScreen: View {
    @State var backbutton = false
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

                    
                    Text("Thrift Stores")
                        .font(.system(size: 30))
                        .frame(alignment: .center)
                
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=811%20Pacific%20Ave,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=1508167933493094207&ll=36.969755,-122.025273&lsp=9902&q=Crossroads%20Trading%20Co.&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDAAgoECAoQAAoECFIQAQoECFUQDgoECFkQAQoFCKQBEAESJCkAsVurjntCQDGBYUdD+oFewDl+hoEHtXxCQEH1RfQLQoFewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("Crossroads")
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
                    if let url = URL(string: "https://maps.apple.com/?address=813%20Pacific%20Ave,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=16282022094247016834&ll=36.969802,-122.025232&lsp=9902&q=Moon%20Zooom&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhAWCgQIChAACgQIUhABCgQIVRAPCgQIWRACCgUIpAEQARImKdZZiFqQe0JAMbYIstv5gV7AOVQvrra2fEJAQSbGVqRBgV7AUAQ%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Moon Zoom")
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
                    if let url = URL(string: "https://maps.apple.com/?address=204%20Union%20St,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=14173918038271574610&ll=36.975729,-122.029306&lsp=9902&q=Goodwill%20Donation%20Center&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDfAQoECAoQAAoECFIQAwoECFUQDgoECFkQAQoFCKQBEAESJikftYmEUXxCQDFXlRlCPIJewDmdiq/gd31CQEEjNhcHhIFewFAD") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Goodwill")
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
                    if let url = URL(string: "https://maps.apple.com/?address=1622%20Seabright%20Ave,%20Santa%20Cruz,%20CA%20%2095062,%20United%20States&auid=5046089755797672215&ll=36.979285,-122.009974&lsp=9902&q=Forever%20Thrift&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhAWCgQIChAACgQIUhABCgQIVRAOCgQIWRABCgUIpAEQARImKWfROwbGfEJAMWkWVof/gF7AOeWmYWLsfUJAQZGSH0pHgF7AUAQ%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Forever Thrift")
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
                    if let url = URL(string: "https://maps.apple.com/?address=1305%20Water%20St,%20Santa%20Cruz,%20CA%20%2095062,%20United%20States&auid=7848881891065894111&ll=36.981600,-122.008005&lsp=9902&q=Thrift%20Center&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhAWCgQIChAACgQIUhABCgQIVRAOCgQIWRABCgUIpAEQARImKQr05OYRfUJAMajqTkbfgF7AOYjJCkM4fkJAQfDvqAcngF7AUAM%3D") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("Thrift Center")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .frame(width: 300, height: 50)
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                .cornerRadius(30)
                .shadow(radius: 10)
                
            


                Spacer()
            }
            if backbutton {
                RecDesScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
            }
    }
}

struct ThriftScreen_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            ThriftScreen()
        }
    }
}
