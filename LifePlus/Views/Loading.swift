//
//  loading.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 17/08/23.
//

import SwiftUI



struct Loading: View {
    @State private var loadingViewModel = LoadingViewModel()
    @EnvironmentObject var contentViewModel: ContentViewModel
    var body: some View {
        
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .rotation3DEffect(
                    .degrees(loadingViewModel.rotation), axis: (x:0, y: 1, z:0))
                //.scaleEffect(loadingViewModel.scale)
                .frame(maxWidth:.infinity, maxHeight: .infinity)
                .onAppear() {
                    
                    DispatchQueue.main.asyncAfter(deadline: .now()+0.1) {
                        withAnimation (.easeInOut(duration: 3)){
                        loadingViewModel.scale = 1
                            loadingViewModel.rotation = 360
                            DispatchQueue.main.asyncAfter(deadline: .now()+1.5) {
                                contentViewModel.path.append(.intro)
                            }
                        }
                    }
                }
        }
        
        .background{
            Image("Wallpaper")
                .resizable()
                .scaledToFill()
                .opacity(0.05)
                .ignoresSafeArea()
                .background(Color("background"))
        }
    }
}
struct Loading_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            Loading()
                .environmentObject(ContentViewModel())
        }
    }
}
