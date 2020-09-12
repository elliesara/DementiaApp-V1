//
//  AboutView.swift
//  Dementia-App
//
//  Created by Jacob Yu on 8/7/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack{
            Text("About")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
                .frame(height:20)
            
            Text("This dementia app was designed by the members of the neuroscience club of Amador Valley high School in Pleasanton, CA. Our goal is to help the community by applying what we have learned to help people with various neurological disorders. ")
                    .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.leading)
                .frame(width:320,height:120)
            
            Spacer().frame(height:500)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
