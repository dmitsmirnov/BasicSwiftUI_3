//
//  RegistUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 19.09.2024.
//

import SwiftUI

struct ContentUIView: View {
    
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        VStack {
            Text("Content")
            Button(action: {
                UserDefaults.standard.setValue(false, forKey: "isLogin")
                appViewModel.isLogin = false
            }, label: {
                Text("Out")
            })
        }
    }
}

#Preview {
    ContentUIView()
}
