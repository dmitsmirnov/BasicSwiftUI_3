//
//  ScrollViewHorisontalUIView.swift
//  BaseProject
//
//  Created by user on 15.10.2024.
//

import SwiftUI

struct ScrollViewHorisontalUIView: View {
    
    @State var currentTab = "ДС-0"
    
    var list = ["ДС-0", "ДС-1", "ДС-2"]
    
    var body: some View {
        
        VStack {
            
            CustomPickerView(currentTab: $currentTab, list: list)
                
            Text(currentTab)
            
        }
        
    }
}

struct CustomPickerView: View {
    
    @Binding var currentTab: String
    @State var list: [String]
    
    var body: some View {
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    
                    ForEach(list, id: \.self) { item in
                        Button(action:
                        {
                            currentTab = item
                            // Добавляем вибрацию при нажатии
                            let generator = UIImpactFeedbackGenerator(style: .medium)
                            generator.impactOccurred()}) 
                        {
                                
                                Text("ДС-0")
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 10)
                                    .background(currentTab == item ? Color.blue : Color(.systemGray5))
                                    .foregroundColor(currentTab == item ? Color.white : Color.black)
                                    .cornerRadius(15)
                            }
                            .tag(item)
                    }
                    
                }
            }
            //.frame(height: 30) // Задайте высоту для ScrollView
        }
        .padding()
        
        
    }
}

#Preview {
    ScrollViewHorisontalUIView()
}
