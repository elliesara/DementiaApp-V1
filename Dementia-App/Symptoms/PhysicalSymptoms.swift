//
//  PhysicalSymptoms.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//
import SwiftUI

struct PhysicalSymptoms: View {
    
    @Environment(\.presentationMode) var presentation
    @State private var newButton: Bool = false
    
    @State private var unkempt: Bool = false
    @State private var washBody: Bool = false
    @State private var clothing: Bool = false
    @State private var teeth: Bool = false
    @State private var wearing: Bool = false
    @State private var toilet: Bool = false
    @State private var hands: Bool = false
    @State private var hair: Bool = false
    @State private var convulsion: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
                
            VStack {
                
                Text("Physical Symptoms").font(.largeTitle).fontWeight(.bold)
                Text("Select all that apply").font(.caption).foregroundColor(Color.blue)
                    .padding(.top, geometry.size.height*0.013)
                
                VStack {
                    Toggle(isOn: self.$unkempt) {
                        Text("Having an unkempt appearance")
                    }.frame(width: geometry.size.width*0.78)
                    .padding(.bottom)
                    Toggle(isOn: self.$washBody) {
                        Text("Inability to wash body")
                    }.frame(width: geometry.size.width*0.78)
                    .padding(.bottom)
                    Toggle(isOn: self.$clothing) {
                        Text("Difficulty choosing clothing")
                    }.frame(width: geometry.size.width*0.78)
                    .padding(.bottom)
                    Toggle(isOn: self.$teeth) {
                        Text("Difficulty brushing teeth")
                    }.frame(width: geometry.size.width*0.78)
                    .padding(.bottom)
                    Toggle(isOn: self.$wearing) {
                        Text("Trouble with wearing clothes")
                    }.frame(width: geometry.size.width*0.78)
                    .padding(.bottom)
                    Toggle(isOn: self.$toilet) {
                        Text("Inability to sit on toilet")
                    }.frame(width: geometry.size.width*0.78)
                    .padding(.bottom)
                    Toggle(isOn: self.$hands) {
                        Text("Difficulty Washing Hands")
                    }.frame(width: geometry.size.width*0.78)
                    .padding(.bottom)
                    Toggle(isOn: self.$hair) {
                        Text("Inability to Shave/Comb Hair")
                    }.frame(width: geometry.size.width*0.78)
                    .padding(.bottom)
                    Toggle(isOn: self.$convulsion) {
                        Text("Convulsions")
                    }.frame(width: geometry.size.width*0.78)
                    .padding(.bottom)
                    
                    Button(action: { self.newButton = true }) {

                        HStack(alignment: .center) {
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width*0.05, height: geometry.size.height*0.05)

                            Text("New Symptom")
                                .font(.system(size: geometry.size.width*0.048))
                                .fontWeight(.bold)
                        }
                        .padding()
                        .foregroundColor(Color.white)
                        .frame(width: geometry.size.width*0.5, height: geometry.size.height*0.063)
                        .background(Color(#colorLiteral(red: 0.5045029521, green: 0.7307170033, blue: 0.8366141915, alpha: 1)))
                        .cornerRadius(10)

                    }.sheet(isPresented: self.$newButton) {
                        NewSymptom()
                    }
                }
                    .padding(.top, geometry.size.height*0.02)
                
                Spacer()
                
            }
            .navigationBarItems(trailing:
                Button(action: { self.presentation.wrappedValue.dismiss() }) {
                    Text("Submit")
            })
            
        }
    }
}

struct PhysicalSymptoms_Previews: PreviewProvider {
    static var previews: some View {
        PhysicalSymptoms()
    }
}
