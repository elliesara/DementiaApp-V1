//
//  AccountInfoView.swift
//  Dementia-App
//
//  Created by Jacob Yu on 8/7/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct AccountInfoView: View {
    var body: some View {
        VStack(){
            Group{
                Text("Account Information")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.bottom,20)
                Spacer()
                    .frame(height:10)
            }
            VStack(alignment: .leading){
                Group{
                    HStack{
                        Text("Email")
                            .frame(width: UIScreen.main.bounds.width*0.5)
                        Spacer()
                    }
                    Spacer()
                        .frame(height:10)
                }
                Group{
                    HStack{
                        Text("Password")
                            .frame(width: UIScreen.main.bounds.width*0.5)
                        Spacer()
                    }
                    Spacer()
                        .frame(height:10)
                }
                HStack{
                    Text("Age")
                        .frame(width: UIScreen.main.bounds.width*0.5)
                    Spacer()
                }
                Spacer()
                    .frame(height:10)
                HStack{
                    Text("Sex")
                        .frame(width: UIScreen.main.bounds.width*0.5)
                    Spacer()
                }
            }
            Spacer()
                .frame(height:10)
            HStack{
                Text("Interests")
                    .font(.headline)
                    .fontWeight(.heavy)
            }
            Spacer()
                .frame(height: 250)
            HStack{
                Text("Edit")
                    .background(RoundedRectangle(cornerRadius: 10)
                            .fill(Color.green).frame(width:200, height:30))
            }
//                .fill(Color.green)
//                .frame(width:50,height:20)
                        
        }.padding(.bottom,150)
    }
}

struct AccountInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AccountInfoView()
    }
}
