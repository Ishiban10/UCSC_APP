//
//  ContentView.swift
//  Slug Central
//
//  Created by Ishaan Das on 12/22/21.
//
// ContentView will be the login page

import SwiftUI
//import LocalAuthentication

struct ContentView: View {
    //@State private var isUnlocked = false
    @State var showHomeScreen = false
    @State var delaycomplete = false
    var body: some View {
        ZStack {
            Color("FirstBackGround").ignoresSafeArea()
            VStack {
                Image("SlugLogo")
                Spacer()
                    .frame(height:400)
            }
            
            
            if delaycomplete {
                SlugLogoScreen()
                    .onAppear() {
                        withAnimation(.spring()) {
                            showHomeScreen.toggle()
                        }
                    }

            }
            
            if showHomeScreen {
                HomeScreen()
                    .transition(AnyTransition.move(edge: .bottom))
            }
            }

        .onAppear(perform: delay)
        
        }

    // paste function below this that I know works
    func delay() {
        let time = 1.0
        DispatchQueue.main.asyncAfter(deadline: .now() + time) {
            delaycomplete.toggle()
        }
    }

    //paste function above this that I know works
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




//                Button(action: {
//                    withAnimation(.easeInOut){
//                        showHomeScreen.toggle()
//                    }
//                }) {
//                    Text("Continue to Slug Central")
//                        .foregroundColor(Color.green)
//                        .font(.system(size: 25))
//                        .padding(.all)
//                }
//                .frame(width: 300, height: 60, alignment: .center)
//                .background(Color.white)
//                .shadow(radius: 30)
//                .cornerRadius(30)
//                .padding(.all)


//if showHomeScreen{
//    HomeScreen()
//        .transition(AnyTransition.move(edge:.bottom))
//        .edgesIgnoringSafeArea(.all)
//}




//func authenticate() {
//    let context = LAContext()
//    var error: NSError?
//
//    if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error) {
//        let reason = "Log into Slug Central"
//
//        context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: reason) { success, authenticationError in
//            if success {
//                isUnlocked = true
//
//            } else {
//                // for error
//            }
//        }
//    } else {
//
//    }
//}



// Original Content view with touch/face id

//import SwiftUI
//import LocalAuthentication
//
//struct ContentView: View {
//    @State private var isUnlocked = false
//    @State var showHomeScreen = false
//    var body: some View {
//        ZStack {
//            Color("FirstBackGround").ignoresSafeArea()
//            VStack {
//                Image("SlugLogo")
//                Spacer()
//                    .frame(height:400)
//            }
//
//
//            if isUnlocked {
//                SlugLogoScreen()
//                    .onAppear() {
//                        withAnimation(.spring()) {
//                            showHomeScreen.toggle()
//                        }
//                    }
////                HomeScreen()
////                    .transition(AnyTransition.move(edge: .bottom))
//            }
//
//            if showHomeScreen {
//                HomeScreen()
//                    .transition(AnyTransition.move(edge: .bottom))
//            }
//            }
////        .animation(Animation.spring())
////        .edgesIgnoringSafeArea(.all)
//        .onAppear(perform: authenticate)
//
//        }
//
//    // paste function below this that I know works
//    func authenticate() {
//        let context = LAContext()
//        var error: NSError?
//
//        if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error) {
//            let reason = "Log into Slug Central"
//
//            context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: reason) { success, authenticationError in
//                if success {
//                    isUnlocked = true
//
//                } else {
//                    // for error
//                }
//            }
//        } else {
//
//        }
//    }
//
//    //paste function above this that I know works
//}

