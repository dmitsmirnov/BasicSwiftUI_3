//
//  BaseProjectApp.swift
//  BaseProject
//
//  Created by dmitsmirnov on 18.03.2024.
//

import SwiftUI
import TipKit

@main
struct BaseProjectApp: App {
    
    @StateObject private var taskList = TaskList()
    
    @ObservedObject var appViewModel: AppViewModel = AppViewModel()
    
    init(){
        if UserDefaults.standard.bool(forKey: "isLogin") {
            appViewModel.isLogin = true
        } else {
            appViewModel.isLogin = false
        }
    }
    
    var body: some Scene {
        WindowGroup {
            
//            if appViewModel.isLogin {
//                ContentUIView()
//                    .environmentObject(appViewModel)
//            } else {
//                LoginUIView()
//                    .environmentObject(appViewModel)
//            }
            
//            GetMenuUIView()
            ScrollViewHorisontalUIView()
            
            //Picker_VMPUIView()
//            TipKitUIView()
//                .task {
//                    
//                    try? Tips.resetDatastore()
//                    
//                    try? Tips.configure([
//                        .displayFrequency(.immediate),
//                        .datastoreLocation(.applicationDefault)])
//                }
//            EnvironmentObjectUIView()
//                .environmentObject(taskList)
//            SearchUIView()
        }
        
    }
}
