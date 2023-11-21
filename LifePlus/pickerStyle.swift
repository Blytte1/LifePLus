//
//  SwiftUIView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 31/07/23.
//

import SwiftUI
struct PickerStyle:ViewModifier{
let tag:Double
    func body(content: Content) -> some View{
        content
       
            .foregroundStyle(.white)
        .fontWeight(.heavy)
        .tag(0)
        .padding(3)
        .frame(maxWidth: .infinity, alignment: .center)
        .cornerRadius(20)
    }
}

