//
//  HomeView.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isNextView = false
    
    var body: some View {
        GeometryReader { geometry in
            
            NavigationView {
                
                VStack (alignment: .leading) {
                
                /// Big Categories
                
                    NavigationLink(destination: BigCategoriesView()) {
                        
                        HStack {
                            Image(systemName: "thermometer")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width*0.1, height: geometry.size.height*0.06)
                                .padding(.leading)
                            
                            Text("Daily Symptom Check-In")
                                .font(.system(size: geometry.size.width*0.055))
                                .fontWeight(.bold)
                                .padding()
                            
                            Spacer()
                        }
                        .padding()
                        .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                        .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.25)
                        .background(Color(#colorLiteral(red: 0.9577553868, green: 0.9579156041, blue: 0.9577342868, alpha: 1)))
                        .cornerRadius(25)
                        
                    }.padding(.top)
                
                /// Track Diet
                    
                    NavigationLink(destination: TrackDiet()) {
                        
                        HStack {
                            Image(systemName: "cart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width*0.1, height: geometry.size.height*0.105)
                                .padding(.leading)
                            
                            Text("Track What You Eat")
                                .font(.system(size: geometry.size.width*0.055))
                                .fontWeight(.bold)
                                .padding()
                            
                            Spacer()
                        }
                        .padding()
                        .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                        .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.25)
                        .background(Color(#colorLiteral(red: 0.9577553868, green: 0.9579156041, blue: 0.9577342868, alpha: 1)))
                        .cornerRadius(25)
                        
                    }
                    
                /// Brain Train
                    
                    NavigationLink(destination: Questionare()) {

                        HStack {
                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width*0.1, height: geometry.size.height*0.105)
                                .padding(.leading)

                            Text("Start Today's Brain Train")
                                .font(.system(size: geometry.size.width*0.055))
                                .fontWeight(.bold)
                                .padding()

                            Spacer()
                        }
                        .padding()
                        .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                        .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.25)
                        .background(Color(#colorLiteral(red: 0.9577553868, green: 0.9579156041, blue: 0.9577342868, alpha: 1)))
                        .cornerRadius(25)

                    }
                    
                /// Reports
                    
//                    NavigationLink(destination: ReportsView()) {
//
//                        HStack {
//                            Image(systemName: "doc.on.clipboard")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: geometry.size.width*0.1, height: geometry.size.height*0.105)
//                                .padding(.leading)
//
//                            Text("See Your Reports")
//                            .font(.system(size: geometry.size.width*0.055))
//                            .fontWeight(.bold)
//                            .padding()
//
//                            Spacer()
//                        }
//                        .padding()
//                        .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
//                        .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.19)
//                        .background(Color(#colorLiteral(red: 0.9577553868, green: 0.9579156041, blue: 0.9577342868, alpha: 1)))
//                        .cornerRadius(25)
//
//                    }
                    
                    Spacer()
                    
                }.navigationBarTitle(Text("June 27, 2020"))
                
            }
            
        }
        
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
