//
//  PhysicalCD.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/22/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct PhysicalCD: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: PSubCategories.getPSubCategoriesEntity()) var pSubCategories: FetchedResults<PSubCategories>
        
    /// for toggles
    @State private var physicalSymptoms = false
    @State private var selfCare: Bool = false
    @State private var disturbedSleep: Bool = false
    @State private var impairedMobility: Bool = false
    @State private var riskForInjury: Bool = false
    @State private var disturbedSense: Bool = false
    
    /// for CD buttons
    
    
    var body: some View {
        GeometryReader { geometry in
            
            NavigationView {
                
                ZStack {
                    Color(#colorLiteral(red: 0.7568627451, green: 0.8426002264, blue: 0.8870300651, alpha: 1))
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack() {
                        
                        Image(systemName: "hand.raised")
                            .font(.system(size: geometry.size.width*0.15))
                        .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                        Text("Physical")
                            .font(.system(size: geometry.size.width*0.1)).fontWeight(.bold)
                        .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                        Text("Select all that apply")
                            .font(.caption).foregroundColor(Color.blue)
                        
            /// RadioGroupPicker is from an open source library that I downloaded from the internet. Info about this functionality is here: https://github.com/yonat/RadioGroup
            /// ****BUT: don't work with this yet! for now, we will use regular toggles that are native to Xcode if you want to see what it looks like, however, read below
            /// In order to use this, you will have to download CocoaPods (the open source library that has millions of AMAZING functionalities that we can use without having to code as long as we download them) -> following instructions online ( https://guides.cocoapods.org/ ) are really confusing, so if you need any help, please text me :)
                        
//                        VStack {
//                            ForEach(self.pSubCategories, id: \.self) { pSubCategory in
//                                Button(action: {
//
//                                })
//                            }
//                        }
                        
                        
                        VStack {
                            
                            Toggle(isOn: self.$selfCare) {
                                Text("Self-Care Deficit")
                            }.frame(width: geometry.size.width*0.78)
                            .padding(.bottom)
                            .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                            Toggle(isOn: self.$disturbedSleep) {
                                Text("Disturbed Sleep Pattern")
                            }.frame(width: geometry.size.width*0.78)
                            .padding(.bottom)
                            .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                            Toggle(isOn: self.$impairedMobility) {
                                Text("Impaired Physical Mobility")
                            }.frame(width: geometry.size.width*0.78)
                            .padding(.bottom)
                            .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                            Toggle(isOn: self.$riskForInjury) {
                                Text("Risk For Injury")
                            }.frame(width: geometry.size.width*0.78)
                            .padding(.bottom)
                            .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                            Toggle(isOn: self.$disturbedSense) {
                                Text("Disturbed Sensory Perception")
                            }.frame(width: geometry.size.width*0.78)
                            .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                            
//                            RadioGroupPicker(
//                                selectedIndex: self.$selectedFirst,
//                                titles: ["Self-Care Deficit"],
//                                selectedColor: .systemBlue,
//                                buttonSize: 23,
//                                itemSpacing: geometry.size.width*0.34,
//                                titleAlignment: .left
//                            )
//                            .environment(\.layoutDirection, .rightToLeft)
//                            .fixedSize()
//                            .padding(8)
//                            .border(Color.accentColor)
//
//                            RadioGroupPicker(
//                                selectedIndex: self.$selectedSecond,
//                                titles: ["Disturbed Sleep Pattern"],
//                                selectedColor: .systemBlue,
//                                buttonSize: 23,
//                                itemSpacing: geometry.size.width*0.2,
//                                titleAlignment: .left
//                            )
//                            .environment(\.layoutDirection, .rightToLeft)
//                            .fixedSize()
//                            .padding(8)
//                            .border(Color.accentColor)
                        
                            
                        }.padding(.top)
                        
                        Spacer()
                        
            /// I like these circles! But for now, to make our lives simple, we can use toggles instead. Once we figure out how to use radio buttons, we can change them! Because we have to deal with animations and whatnot
                        
//                        HStack{
//                            Text("Yes")
//                                .padding(.top,-50)
//                                .offset(x:104)
//                            Text("No")
//                                .padding(.top,-50)
//                                .padding(.leading,-10)
//                                .offset(x:140)
//                        }
//                        HStack{
//                            Text("Self-Care Deficit")
//                                .frame(width:300,height:50,alignment: .leading)
//                                .padding(.top,-50)
//                                .padding(.leading)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(x:-50,y:-25)
//                                .padding(.leading,-20)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(y:-25)
//                                .padding(.leading,-20)
//                        }.padding(.bottom,-150)
//                        HStack{
//                            Text("Disturbed Sleep Pattern")
//                            .frame(width:300, height:50,alignment: .leading)
//                                .padding(.leading)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(x:-50)
//                                .padding(.leading,-20)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .padding(.leading,-20)
//                        }
//                        HStack{
//                            Text("Impaired Physical Mobility")
//                            .frame(width:300, height:50, alignment: .leading)
//                                .padding(.leading)
//                                .padding(.top,-10)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(x:-50,y:-5)
//                                .padding(.leading,-20)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(y:-5)
//                                .padding(.leading,-20)
//                        }
//                        HStack{
//                            Text("Risk For Injury")
//                            .frame(width:300,height:50,alignment: .leading)
//                                .padding(.leading)
//                                .padding(.top,-10)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(x:-50,y:-5)
//                                .padding(.leading,-20)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(y:-5)
//                                .padding(.leading,-20)
//                        }
//                        HStack{
//                            Text("Disturbed Sensory \nPerception")
//                            .frame(width:300,height:50,alignment: .leading)
//                                .padding(.leading)
//                                .padding(.top,-10)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(x:-50,y:-5)
//                                .padding(.leading,-20)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(y:-5)
//                                .padding(.leading,-20)
//                        }
//                        HStack{
//                            Text("Yes")
//                                .padding(.top,-50)
//                                .offset(x:104)
//                            Text("No")
//                                .padding(.top,-50)
//                                .padding(.leading,-10)
//                                .offset(x:140)
//                        }
//                        HStack{
//                            Text("Self-Care Deficit")
//                                .frame(width:300,height:50,alignment: .leading)
//                                .padding(.top,-50)
//                                .padding(.leading)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(x:-50,y:-25)
//                                .padding(.leading,-20)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(y:-25)
//                                .padding(.leading,-20)
//                        }.padding(.bottom,-150)
//                        HStack{
//                            Text("Disturbed Sleep Pattern")
//                            .frame(width:300, height:50,alignment: .leading)
//                                .padding(.leading)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(x:-50)
//                                .padding(.leading,-20)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .padding(.leading,-20)
//                        }
//                        HStack{
//                            Text("Impaired Physical Mobility")
//                            .frame(width:300, height:50, alignment: .leading)
//                                .padding(.leading)
//                                .padding(.top,-10)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(x:-50,y:-5)
//                                .padding(.leading,-20)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(y:-5)
//                                .padding(.leading,-20)
//                        }
//                        HStack{
//                            Text("Risk For Injury")
//                            .frame(width:300,height:50,alignment: .leading)
//                                .padding(.leading)
//                                .padding(.top,-10)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(x:-50,y:-5)
//                                .padding(.leading,-20)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(y:-5)
//                                .padding(.leading,-20)
//                        }
//                        HStack{
//                            Text("Disturbed Sensory \nPerception")
//                            .frame(width:300,height:50,alignment: .leading)
//                                .padding(.leading)
//                                .padding(.top,-10)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(x:-50,y:-5)
//                                .padding(.leading,-20)
//                            Circle()
//                                .fill(Color.white)
//                                .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                .frame(width:20,height:20)
//                                .offset(y:-5)
//                                .padding(.leading,-20)
//                        }
                
                }.navigationBarItems(leading:
                    Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                        Text("Cancel")
                    }, trailing:
                    NavigationLink(destination: PhysicalSymptoms()) {
                        Text("Next")
                    })
                    
                }
            }
        }
    }
}

struct PhysicalCD_Previews: PreviewProvider {
    static var previews: some View {
        PhysicalCD()
    }
}
