//
//  ContentView.swift
//  button
//
//  Created by Владимир Ширяев on 16.12.2021.
//

import SwiftUI


struct ContentView: View {
    @State var isHidden = false

    var body: some View {
        ZStack {
            Color.brown.ignoresSafeArea()
            
            VStack{
                HStack{
                    TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                        Text("MAP").tabItem {
                            HStack{
                                Image(systemName:"globe")
                                Text("MAP")
                                
                            }
                        }.tag(1)
                        
                        ListUIView().tabItem {
                            HStack{
                                Image(systemName:"list.bullet")
                                Text("LIST")
                            }
                        }.tag(2)

                    }//: TABVIEW
                }
                //: IMAGE
            }//:VSTACK
        }//: ZSTACK
    }//:BODY
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
