//
//  TrackDiet.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct TrackDiet: View {
    
    @State var checkState: Bool = false
    
    var body: some View {
        ScrollView{
            
            GeometryReader{ geometry in
                
                VStack(){
                    
                    Text("Track What You Ate!")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                    Text("Eat healthier and get smarter!")
                        .padding(.bottom, 40)
                    Text("Did you eat today:")
                        .fontWeight(.bold)
                        .offset(x:-95)
                    
                    VStack(alignment: .leading){
                        
                        HStack(){
                            
                            Text("One Serving of Vegetables")
                                .frame(width: geometry.size.width*0.8)
                            Spacer()
                            Button(action:
                                {
                                    self.checkState = !self.checkState
                                    print("State : \(self.checkState)")


                            }) {
                                       Rectangle()
                                                .fill(self.checkState ? Color.green : Color.gray)
                                                .overlay(Rectangle().stroke(Color.gray,lineWidth:2))
                                                .frame(width:20, height:20, alignment: .center)
                                }
                        }
                        HStack{
                            Text("Three Servings of Whole Grains")
                                .frame(width: geometry.size.width*0.8)
                                .offset(x:19)
                            Spacer()
                            Rectangle()
                                .fill(Color.white)
                                .overlay(Rectangle().stroke(Color.gray, lineWidth:2))
                                .frame(width:20,height:20)
                        }
                        HStack{
                            Text("One Serving of Leafy Green\n Vegetables")
                                .frame(width: geometry.size.width*0.8,height:45)
                                .offset(x:5)
                            Spacer()
                            Rectangle()
                                .fill(Color.white)
                                .overlay(Rectangle().stroke(Color.gray, lineWidth:2))
                                .frame(width:20,height:20)
                        }
                        HStack{
                            Text("One Serving of Berries")
                                .frame(width: geometry.size.width*0.8)
                                .offset(x:-15)
                            Spacer()
                            Rectangle()
                                .fill(Color.white)
                                .overlay(Rectangle().stroke(Color.gray, lineWidth:2))
                                .frame(width:20,height:20)
                        }
                        HStack{
                            Text("One Serving of Poultry")
                                .frame(width: geometry.size.width*0.8)
                                .offset(x:-15)
                            Spacer()
                            Rectangle()
                                .fill(Color.white)
                                .overlay(Rectangle().stroke(Color.gray, lineWidth:2))
                                .frame(width:20,height:20)
                        }
                        HStack{
                            Text("One Serving of Nuts")
                                .frame(width: geometry.size.width*0.8)
                                .offset(x:-21)
                            Spacer()
                            Rectangle()
                                .fill(Color.white)
                                .overlay(Rectangle().stroke(Color.gray, lineWidth:2))
                                .frame(width:20,height:20)
                        }
                        HStack{
                            Text("Two Boiled Eggs")
                                .frame(width: geometry.size.width*0.8)
                                .offset(x:-34)
                            Spacer()
                            Rectangle()
                                .fill(Color.white)
                                .overlay(Rectangle().stroke(Color.gray, lineWidth:2))
                                .frame(width:20,height:20)
                        }
                        HStack{
                            Text("One Glass of Milk")
                                .frame(width: geometry.size.width*0.8)
                                .offset(x:-30)
                            Spacer()
                            Rectangle()
                                .fill(Color.white)
                                .overlay(Rectangle().stroke(Color.gray, lineWidth:2))
                                .frame(width:20,height:20)
                        }
                    }.offset(x:-30)
              }
            }
        }
    }
}
struct TrackDiet_Previews: PreviewProvider {
    static var previews: some View {
        TrackDiet()
    }
}
