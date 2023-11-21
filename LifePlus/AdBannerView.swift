//
//  AdBannerView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 06/11/23.
//

//import SwiftUI
//import GoogleMobileAds
//
//
//// UIViewRepresentable wrapper for AdMob banner view
//struct AdBannerView: UIViewRepresentable {
//    let adUnitID: String
//
//    func makeUIView(context: Context) -> GADBannerView {
//        let bannerView = GADBannerView(adSize: GADAdSizeFromCGSize(CGSize(width: 50, height: 50))) // Set your desired banner ad size
//        bannerView.adUnitID = adUnitID
//        bannerView.rootViewController = UIApplication.shared.windows.first?.rootViewController
//        bannerView.load(GADRequest())
//        return bannerView
//    }
//    
//    func updateUIView(_ uiView: GADBannerView, context: Context) {}
//}
