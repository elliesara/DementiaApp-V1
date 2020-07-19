//
//  BigCategories.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct BigCategories: View {
    
    @State private var physical = false
    @State private var mental = false
    @State private var social = false
    
    var body: some View {
        GeometryReader { geometry in

            VStack(alignment: .leading) {

                
            /// Physical

                Button(action: { self.physical = true }) {

                    HStack {
                        Image(systemName: "hand.raised")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width*0.2, height: geometry.size.height*0.105)
                            .padding(.leading)

                        Text("Physical")
                            .font(.system(size: geometry.size.width*0.07))
                            .fontWeight(.bold)
                            .padding()

                        Spacer()
                    }
                    .padding()
                    .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                    .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.23)
                    .background(Color(#colorLiteral(red: 0.9577553868, green: 0.9579156041, blue: 0.9577342868, alpha: 1)))
                    .cornerRadius(25)

                }.sheet(isPresented: self.$physical) {
                    Physical()
                }.padding(.top)

                
            /// Mental
                
                Button(action: { self.mental.toggle() }) {

                    HStack {
                        Image(systemName: "eye")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width*0.2, height: geometry.size.height*0.105)
                            .padding(.leading)

                        Text("Mental")
                            .font(.system(size: geometry.size.width*0.07))
                            .fontWeight(.bold)
                            .padding()
                        
                        Spacer()
                    }
                    .padding()
                    .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                    .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.23)
                    .background(Color(#colorLiteral(red: 0.9577553868, green: 0.9579156041, blue: 0.9577342868, alpha: 1)))
                    .cornerRadius(25)

                }.sheet(isPresented: self.$mental) {
                    Mental()
                }
                
                
            /// Social
                
                Button(action: { self.social.toggle() }) {

                    HStack {
                        Image(systemName: "person.3.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width*0.2, height: geometry.size.height*0.105)
                            .padding(.leading)

                        Text("Social")
                            .font(.system(size: geometry.size.width*0.07))
                            .fontWeight(.bold)
                            .padding()

                        Spacer()
                    }
                    .padding()
                    .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                    .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.23)
                    .background(Color(#colorLiteral(red: 0.9577553868, green: 0.9579156041, blue: 0.9577342868, alpha: 1)))
                    .cornerRadius(25)

                }.sheet(isPresented: self.$social) {
                    Social()
                }
                
                Spacer()

            }.navigationBarTitle(Text("Symptom Categories"))
            
        }
        
    }
    
}

struct BigCategories_Previews: PreviewProvider {
    static var previews: some View {
        BigCategories()
    }
}
