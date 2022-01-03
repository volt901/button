//
//  SwiftUIView.swift
//  button
//
//  Created by Владимир Ширяев on 03.01.2022.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView {
        List {
            Text("🍌🍌")
            Text("🍎🍎")
        }
        .listStyle(InsetListStyle())
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
