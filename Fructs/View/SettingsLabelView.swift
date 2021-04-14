//
//  SettingsLabelView.swift
//  Fructs
//
//  Created by Manoel Filho on 13/04/21.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - properties
    var labelText: String
    var labelImage: String
    
    //MARK: - Body
    var body: some View {
        HStack{
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}
//MARK: - Preview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructs", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
