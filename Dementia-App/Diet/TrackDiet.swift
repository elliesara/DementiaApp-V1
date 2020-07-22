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
        ScrollView {
            
            VStack {
                
                Group {
                    
                    Text("Track What You Ate!")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                    Text("Eat healthier and get smarter!")
                        .padding(.bottom, 40)
                    HStack {
                        Text("Did you eat today:")
                            .fontWeight(.bold)
                            .frame(width: UIScreen.main.bounds.width*0.5)
                        Spacer()
                    }
                    
                }
                
                VStack(alignment: .leading) {
                    
                    HStack {

                        Text("One Serving of Vegetables")
                        Spacer()
                        CheckMark()
                    }
                    HStack {
                        Text("Three Servings of Whole Grains")
                        Spacer()
                        CheckMark()
                    }
                    HStack {
                        Text("One Serving of Leafy Green Vegetables")
                        Spacer()
                        CheckMark()
                    }
                    HStack {
                        Text("One Serving of Berries")
                        Spacer()
                        CheckMark()
                    }
                    HStack {
                        Text("One Serving of Poultry")
                        Spacer()
                        CheckMark()
                    }
                    HStack {
                        Text("One Serving of Nuts")
                        Spacer()
                        CheckMark()
                    }
                    HStack {
                        Text("Two Boiled Eggs")
                        Spacer()
                        CheckMark()
                    }
                    HStack {
                        Text("One Glass of Milk")
                        Spacer()
                        CheckMark()
                    }
                    
                }.frame(width: UIScreen.main.bounds.width*0.78)
            }
        }
    }
}

struct CheckMark: View {
    
    @State var checkState: Bool = false
    
    var body: some View {
        Button(action:
            {
            self.checkState = !self.checkState
            print("State : \(self.checkState)")


        }) {
           Rectangle()
                .fill(self.checkState ? Color.blue : Color(#colorLiteral(red: 0.9592792897, green: 0.9592792897, blue: 0.9592792897, alpha: 1)))
                .overlay(Rectangle().stroke(Color(#colorLiteral(red: 0.9339778938, green: 0.9339778938, blue: 0.9339778938, alpha: 1)), lineWidth:2))
                .frame(width:20, height:20, alignment: .center)
                .cornerRadius(5)
        }
    }
}


struct TrackDiet_Previews: PreviewProvider {
    static var previews: some View {
        TrackDiet()
    }
}
