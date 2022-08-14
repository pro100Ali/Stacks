//
//  ContentView.swift
//  StackViewDemo
//
//  Created by Али  on 14.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Instant Developer")
                    .fontWeight(.medium).font(.system(size: 40)).foregroundColor(.white)
                
                Text("Get help from experts in 15 minutes").foregroundColor(.white)
            }
            HStack(alignment: .bottom, spacing: 10){
                Image("tutor").resizable().scaledToFit()
                Image("student").resizable().scaledToFit()
//                Image("user3").resizable().scaledToFit()
                
            }.padding(.horizontal, 60)
                    
            Text("Need help with coding problems? Register!").foregroundColor(.white)
            
            Spacer()
            
            if verticalSizeClass == .compact {
                HSignUpButtonGroup()
            }
            else {
                VSignUpButtonGroup()
            }
            
            
        }
        .padding(.top,10)
        .background(){
            Image("background")
                .resizable()
                .ignoresSafeArea()
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
            .previewDisplayName("iPhone 12 Pro")
            .previewInterfaceOrientation(.portrait)

        ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
                .previewDisplayName("iPhone 12 Pro")
                .previewInterfaceOrientation(.landscapeRight)
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
            .previewDisplayName("iPhone 12 Pro Max")
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPad Air (5th generation)"))
            .previewDisplayName("iPad Air")
           
    }
}

struct VSignUpButtonGroup: View {
    var body: some View {
        VStack{
            Button{
                
            } label:{
                Text("Sign up")
            }
            .frame(width:200)
            .padding()
            .foregroundColor(.white)
            .background(Color.indigo)
            .cornerRadius(10)
            
            Button{
                
            } label:{
                Text("Login")
            }
            .frame(width:200)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)
        }.padding(20)
    }
}


struct HSignUpButtonGroup: View {
    var body: some View {
        HStack{
            Button{
                
            } label:{
                Text("Sign up")
            }
            .frame(width:200)
            .padding()
            .foregroundColor(.white)
            .background(Color.indigo)
            .cornerRadius(10)
            
            Button{
                
            } label:{
                Text("Login")
            }
            .frame(width:200)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)
        }
    }
}
