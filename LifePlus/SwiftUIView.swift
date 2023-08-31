//
//  SwiftUIView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 31/07/23.
//

import SwiftUI
struct PickerView:ViewModifier{
let tag:Int
    func body(content: Content) -> some View{
        content
       
        .foregroundColor(.white)
        .fontWeight(.heavy)
        .tag(0)
        .padding(.vertical,3)
        .frame(minWidth: 250,maxWidth: 350, alignment: .center)
        .cornerRadius(20)
    }
}

struct SwiftUIView: View {
    var body: some View {
        List{
            Section("sadf"){
                Text("sadfsdf")
            }
        }
        .listStyle(SidebarListStyle())
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
