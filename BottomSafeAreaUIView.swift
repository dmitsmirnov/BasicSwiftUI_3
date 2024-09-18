//
//  BottomSafeAreaUIView.swift
//  BaseProject
//
//  Created by user on 22.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var offset: CGFloat = 0

    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                GeometryReader { geometry in
                    Color.clear
                        .background(GeometryReader { geo in
                            Color.clear
                                .onChange(of: geo.frame(in: .global).minY) { newValue in
                                    // Обновляем состояние при прокрутке
                                    offset = newValue
                                }
                        })
                }
                .frame(height: 0) // Скрываем этот представление

                // Ваш контент
                VStack(spacing: 20) {
                    ForEach(0..<50) { index in
                        Text("Item \(index + 1)")
                            .frame(height: 100)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                }
                .padding(.bottom, 100) // Для отступа от прозрачной области
            }

            // Прозрачная безопасная область
            Color.white
                //.opacity(1 - min(max(offset, 0), 200) / 200) // Устанавливаем прозрачность
                .opacity(0.1)
                .frame(height: 100) // Высота безопасной области
                .edgesIgnoringSafeArea(.bottom) // Игнорируем безопасные зоны
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
