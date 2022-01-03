//
//  AddUIView.swift
//  button
//
//  Created by Владимир Ширяев on 31.12.2021.
//

import SwiftUI

struct AddUIView: View {
    @State var nameVar: String = ""
    @State var locationVar: String = ""
    @State var typeVar: String =  ""
    
    var body: some View {
            List{
                VStack(alignment: .center){
                    Image(systemName: "camera")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            
                VStack(){
                    HStack {
                        VStack(alignment: .leading, spacing: 20){
                            Text("Name")
                            Text("Location")
                            Text("Type")
                        }.foregroundColor(Color.secondary)
                        VStack{
                            TextField("Place name",
                                      text: $nameVar)
                            TextField("Place location",
                                      text: $locationVar)
                            TextField("Place type",
                                      text: $typeVar)
                        }.textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    Button(action: {
                    }, label: {
                        HStack{
                            Text("SAVE")
                        }
                    }).buttonStyle(.bordered)
                }
               .listRowSeparator(.hidden)
            }
            .listStyle(InsetListStyle())
        }
        
    }

struct AddUIView_Previews: PreviewProvider {
    static var previews: some View {
        AddUIView()
    }
}
