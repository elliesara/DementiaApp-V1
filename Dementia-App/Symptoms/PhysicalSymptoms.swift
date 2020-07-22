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
    
    /// needed to make the List match the background color
    
    init(){
        UITableView.appearance().backgroundColor = #colorLiteral(red: 0.7568627451, green: 0.8426002264, blue: 0.8870300651, alpha: 1)
        UITableViewCell.appearance().backgroundColor = #colorLiteral(red: 0.7568627451, green: 0.8426002264, blue: 0.8870300651, alpha: 1)
        UITableView.appearance().tableFooterView = UIView()
    }
    
    var body: some View {
        GeometryReader { geometry in
        
            ZStack {
                Color(#colorLiteral(red: 0.7568627451, green: 0.8426002264, blue: 0.8870300651, alpha: 1))
                    .edgesIgnoringSafeArea(.all)
                        
                VStack {
                    
                    Text("Physical Symptoms").font(.largeTitle).fontWeight(.bold).foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                    Text("Select all that apply").font(.caption).foregroundColor(Color.blue)
                        .padding(.top, geometry.size.height*0.013)
                    
//                VStack {
//                    Toggle(isOn: self.$unkempt) {
//                        Text("Having an unkempt appearance")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$washBody) {
//                        Text("Inability to wash body")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$clothing) {
//                        Text("Difficulty choosing clothing")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$teeth) {
//                        Text("Difficulty brushing teeth")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$wearing) {
//                        Text("Trouble with wearing clothes")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$toilet) {
//                        Text("Inability to sit on toilet")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$hands) {
//                        Text("Difficulty Washing Hands")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$hair) {
//                        Text("Inability to Shave/Comb Hair")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$convulsion) {
//                        Text("Convulsions")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                }.foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1))).padding(.top, geometry.size.height*0.02)
                    
                    List {
                        HStack { Text("Having an unkempt appearance"); Spacer(); CheckMark() }
                        HStack { Text("Inability to wash body"); Spacer(); CheckMark() }
                        HStack { Text("Difficulty choosing clothing"); Spacer(); CheckMark() }
                        HStack { Text("Difficulty brushing teeth"); Spacer(); CheckMark() }
                        HStack { Text("Trouble with wearing clothes"); Spacer(); CheckMark() }
                        HStack { Text("Inability to sit on toilet"); Spacer(); CheckMark() }
                        HStack { Text("Difficulty Washing Hands"); Spacer(); CheckMark() }
                        HStack { Text("Inability to Shave/Comb Hair"); Spacer(); CheckMark() }
                        HStack { Text("Convulsions"); Spacer(); CheckMark() }
                    }.foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1))).frame(width: UIScreen.main.bounds.width*0.9)
                    
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
                    
                    Spacer()
                    
                }
                .navigationBarItems(trailing:
                    Button(action: { self.presentation.wrappedValue.dismiss() }) {
                        Text("Submit")
                })
            }
        }
    }
}

struct PhysicalSymptoms_Previews: PreviewProvider {
    static var previews: some View {
        PhysicalSymptoms()
    }
}
