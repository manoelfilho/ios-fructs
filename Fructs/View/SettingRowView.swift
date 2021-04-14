//
//  SettingRowViwe.swift
//  Fructs
//
//  Created by Manoel Filho on 13/04/21.
//

import SwiftUI

struct SettingRowView: View {
    //MARK: - PROPERTIES
    var name: String
    var content: String
    
    //MARK: - BODY
    var body: some View {
        HStack{
            Text("Developer")
                .foregroundColor(Color.gray)
            Spacer()
            Text("John/ Jane")
        }
    }
}
//MARK: - Preview
struct SettingRowViwe_Previews: PreviewProvider {
    static var previews: some View {
        SettingRowView()
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
