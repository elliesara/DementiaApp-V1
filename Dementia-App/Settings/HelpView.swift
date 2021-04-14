//
//  HelpView.swift
//  Dementia-App
//
//  Created by Jacob Yu on 1/28/21.
//  Copyright © 2021 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI
struct HelpView: View {
    @State private var emergency: Bool = false
//    @Environment(\.openURL) var openURL
    @State private var visit: Bool = false
//    var openURL: OpenURLAction{
//        get
//    }
    var body: some View {
        GeometryReader{ geometry in
            VStack{
//                Link("Visit our website.", destination: URL)
                Button(action: {self.visit = true}){
                    ZStack{
                        Circle()
                            .frame(width: geometry.size.width*0.6, height: geometry.size.height*0.6)
                        Text("Visit Our Website!")
                            .foregroundColor(Color.white)
                    }
                    
                }
                Button(action: { self.emergency = true}) {
                    //show a confirmation before calling
                    Text("Call 911")
                        .font(.system(size: geometry.size.width * 0.048))
                        .fontWeight(.bold)
                    .padding()
                    .foregroundColor(Color(.white))
                    .frame(width: geometry.size.width * 0.8,
                           height: geometry.size.height * 0.063)
                        .background(Color.red)
                        .cornerRadius(10)
                    
                }
            }
        }
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
