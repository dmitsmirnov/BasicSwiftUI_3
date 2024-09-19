//
//  LoginUIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 19.09.2024.
//

import SwiftUI

struct LoginUIView: View {
    
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        VStack {
            Text("Login")
            Button(action: {
                UserDefaults.standard.setValue(true, forKey: "isLogin")
                appViewModel.isLogin = true
            }, label: {
                Text("Login")
            })
        }
        
    }
}

#Preview {
    LoginUIView()
}
