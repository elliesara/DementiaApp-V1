//
//  DayGraphView.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/25/21.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct DayGraphView: View {
    let reportData: [ReportData]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Day")
                .font(.title)
                .fontWeight(.bold)
            
            GraphView(data: graphData)
            .frame(height: 200)
            .padding([.leading, .trailing], 5)
        }
    }
    
    private var entries: [PSymptomEntity] {
        reportData.first(where: { $0.date == Date().startOfDay })?.symptoms ?? []
    }
    
    private var graphData: [GraphData] {
        let severities = ["Mild", "Moderate", "Severe", "Deadly"]
        let entries = entries
        
        return severities.enumerated().map { index, element in
            GraphData(value: entries.filter { $0.pSeverity == index + 1 }.count,
                      name: element,
                      color: color(forSeverity: index + 1))
        }
    }
    
    private func color(forSeverity severity: Int) -> Color {
        switch severity {
        case 1:
            return Color(#colorLiteral(red: 0.6952038407, green: 0.4575328231, blue: 0.1743277311, alpha: 1))
        case 2:
            return Color(#colorLiteral(red: 0.7056599855, green: 0.6749765277, blue: 0.3466123939, alpha: 1))
        case 3:
            return Color(#colorLiteral(red: 0.232246995, green: 0.5231903195, blue: 0.647739172, alpha: 1))
        case 4:
            return Color(#colorLiteral(red: 0.6056969166, green: 0.2998026013, blue: 0.7654415965, alpha: 1))
        default:
            return Color(#colorLiteral(red: 0.6671229601, green: 0.1596478224, blue: 0.1696583331, alpha: 1))
        }
    }
}

struct DayGraphView_Previews: PreviewProvider {
    static var previews: some View {
        DayGraphView(reportData: [])
    }
}
