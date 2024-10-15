//
//  GetMenuUIView.swift
//  BaseProject
//
//  Created by user on 02.10.2024.
//

import SwiftUI

struct GetMenuUIView: View {
    var body: some View {
        
        Button {
            self.getData()
        } label: {
            Text("Tap me")
        }

    }
    
    func getData() {
    
        let url =  "http://192.168.3.40:8091/db_cafe/hs/exchange/getMenu"
        //let url = "http://ws1c01.vmpauto.io/db_cafe/hs/exchange/ListCafe?ID=01000154"
        
        guard let url = URL(string: url) else {
            print("Error: cannot create URL")
            return
        }
        
        var request = URLRequest(url: url)
        let username = "Администратор"
        let password = "123"
        let loginString = "\(username):\(password)"
        
        guard let loginData = loginString.data(using: String.Encoding.utf8) else {
            return
        }
        let base64LoginString = loginData.base64EncodedString()
        
        request.httpMethod = "GET"
        request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            do {
                let theJSONText = String(data: data!, encoding: .utf8)
                let jsonData = Data(theJSONText!.utf8)
                
                print(jsonData)
                print(theJSONText)
                
            } catch let error {
                print(error)
            }
        }
        task.resume()
    }
    
}

#Preview {
    GetMenuUIView()
}
