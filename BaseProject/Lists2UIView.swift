//
//  Lists2UIView.swift
//  BaseProject
//
//  Created by dmitsmirnov on 19.03.2024.
//

import SwiftUI

struct Lists2UIView: View {
    
    @State private var users = ["Dima", "Tania", "Alisa", "Max", "Tania", "Alisa", "Max", "Tania", "Alisa", "Max", "Tania", "Alisa", "Max", "Tania", "Alisa", "Max"]
    
    var body: some View {
        
        //ScrollView {
            
            NavigationStack {
                
                VStack {
                    
                    HStack {
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "figure.dress.line.vertical.figure")
                                .padding(.horizontal, 10)
                                .padding(.vertical, 10)
                                .foregroundColor(.black)
                                .background {
                                    RoundedRectangle(cornerRadius: 15, style: .continuous)
                                        .fill(.gray.shadow(.drop(radius: 2)))
                                        .opacity(0.5)
                                }
                            
                        }
                        
                    }
                    .background(Color(UIColor.systemGray6))
                    
                    List {
                        ForEach(users, id: \.self) { user in
                            Text(user)
                        }
                        //.onDelete(perform: delete)
                        .onDelete(perform: { indexSet in
                            users.remove(atOffsets: indexSet)
                        })
                        .onMove(perform: { indices, newOffset in
                            users.move(fromOffsets: indices, toOffset: newOffset)
                        })
                    }
                    .navigationBarItems(trailing: EditButton())
                    
                } // VStack
                
            } // NavigationStack
            
        //}
    }
    
    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

#Preview {
    Lists2UIView()
}
