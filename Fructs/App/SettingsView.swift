//
//  SettingsView.swift
//  Fructs
//
//  Created by Manoel Filho on 13/04/21.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    //MARK: - Body
    var body: some View {
        
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false){
                
                VStack(spacing: 20){
                    
                    //MARK: - SECTION 1
                    GroupBox(
                        label: SettingsLabelView(labelText: "Fructs", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame( width:80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, soduim, and calorie. None have colesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: - SECTION 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Text("If you want you can restart the application by toggle the switch in this box. That way it starts the onBoarding process and you will seee the welcome screeen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restart".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.green)
                            }else{
                                Text("Restart".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    //MARK: - SECTION 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingRowView(name: "Developer", linkLabel: "Site", linkDestination: "manoelfilho.eti.br")
                        SettingRowView(name: "Twitter", linkLabel: "Profile", linkDestination: "twitter.com/manoelfilho")
                        SettingRowView(name: "Designer", content: "Robert Dias")
                        SettingRowView(name: "Line", content: "Content")
                    }
                    
                }//:VSTACK
                
                .padding(.horizontal, 10)
            
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }){
                        Image(systemName: "xmark")
                    }
                )
            }
        }
        
    }
    
}


//MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 11 Pro")
    }
}
