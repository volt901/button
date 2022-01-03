//
//  ListUIView.swift
//  button
//
//  Created by Владимир Ширяев on 18.12.2021.
//

import SwiftUI

private var restarantName = RestarantName2.getPlace()

struct ListUIView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach (restarantName, id: \.id){ i in
                    HStack {
                        Image("\(i.name)").resizable().frame(width: 70, height: 70)
                            .cornerRadius(30)
                        VStack(alignment: .leading,spacing: 5){
                            Text(i.name).bold()
                            Text(i.type)
                            Text(i.location)
                        }
                        
                    }
                }//: FOREACH
            }//: LIST
            .listStyle(InsetListStyle())
            .navigationTitle("LIST RESTARAN")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                                    NavigationLink(destination: AddUIView()) {
                                        Label("New", systemImage: "plus.circle")
                                    }
            )
        }//: NavigatorView
    }
}

struct ListUIView_Previews: PreviewProvider {
    static var previews: some View {
        ListUIView()
    }
}
