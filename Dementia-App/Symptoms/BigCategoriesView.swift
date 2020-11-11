//
//  BigCategoriesView.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct BigCategoriesView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @State private var physical = false
    @State private var mental = false
    @State private var social = false
    
    var body: some View {
        GeometryReader { geometry in
            
            HStack {
                
                Spacer()
                
                VStack {
                    Button(action: { self.physical = true }) {
                        
                        HStack {
                            Text("Physical")
                                .font(.system(size: geometry.size.width*0.07))
                                .fontWeight(.bold)
                                .frame(width: geometry.size.width*0.3)
                                .padding()
                            
                            Image(systemName: "hand.raised")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width*0.2, height: geometry.size.height*0.105)
                                .padding(.leading)
                            
                            Spacer()
                        }
                        .padding()
                        .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                        .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.23)
                        .background(Color(#colorLiteral(red: 0.7568627451, green: 0.8426002264, blue: 0.8870300651, alpha: 1)))
                        .cornerRadius(25)
                        
                    }.sheet(isPresented: self.$physical) {
//                        PhysicalView().environment(\.managedObjectContext, self.managedObjectContext)
                        PSymptomsView().environment(\.managedObjectContext, self.managedObjectContext)
                    }.padding(.top)
                    
                    Button(action: { self.mental = true }) {
                        
                        HStack {
                            Text("Mental")
                                .font(.system(size: geometry.size.width*0.07))
                                .fontWeight(.bold)
                                .frame(width: geometry.size.width*0.3)
                                .padding()
                            
                            Image(systemName: "eye")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width*0.2, height: geometry.size.height*0.105)
                                .padding(.leading)
                            
                            Spacer()
                        }
                        .padding()
                        .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                        .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.23)
                        .background(Color(#colorLiteral(red: 0.7541411519, green: 0.8313546777, blue: 0.9701576829, alpha: 1)))
                        .cornerRadius(25)
                        
                    }.sheet(isPresented: self.$mental) {
//                        MentalView().environment(\.managedObjectContext, self.managedObjectContext)
                        MSymptomsView().environment(\.managedObjectContext, self.managedObjectContext)
                    }
                    
                    Button(action: { self.social = true }) {
                        
                        HStack {
                            Text("Social")
                                .font(.system(size: geometry.size.width*0.07))
                                .fontWeight(.bold)
                                .frame(width: geometry.size.width*0.3)
                                .padding()
                            
                            Image(systemName: "person.3.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width*0.2, height: geometry.size.height*0.105)
                                .padding(.leading)
                            
                            Spacer()
                        }
                        .padding()
                        .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                        .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.23)
                        .background(Color(#colorLiteral(red: 0.9529411765, green: 0.8804875016, blue: 0.7963053584, alpha: 1)))
                        .cornerRadius(25)
                        
                    }.sheet(isPresented: self.$social) {
                        SSymptomsView()
                    }
                    
                    Spacer()
                    
                }.navigationBarTitle(Text("Symptom Categories"))
                Spacer()
            }
        }
        
    }
    
}

struct BigCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        BigCategoriesView()
    }
}
