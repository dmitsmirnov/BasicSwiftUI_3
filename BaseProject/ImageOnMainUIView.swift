//
//  ImageOnMainUIView.swift
//  BaseProject
//
//  Created by user on 02.11.2024.
//

import SwiftUI

import SwiftUI

struct ImageOnMainUIView: View {
    
    @State private var imageOpacity: Double = 1.0 // Прозрачность изображения
    
    var body: some View {
        
        ZStack(alignment: .top) {
            // Фоновое изображение с изменяемой прозрачностью
            Image("USA") // Замените на имя вашего изображения
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
                .edgesIgnoringSafeArea(.top)
                .opacity(imageOpacity) // Установка прозрачности
            
            // Прокручиваемый контент
            ScrollView {
                GeometryReader { geometry in
                    Color.clear
                        .onAppear {
                            // Установка начального значения прозрачности
                            imageOpacity = 1.0
                        }
                        .onChange(of: geometry.frame(in: .global).minY) { minY in
                            // Изменение прозрачности на основе прокрутки
                            let offset = minY + 300 // Включите высоту изображения
                            //imageOpacity = max(0, min(1, 1 - offset / 300)) // Изменение прозрачности
                            
                            imageOpacity = offset / 359
                            
                            //print(offset)
                            
                        }
                }
                .frame(height: 0) // Высота 0, чтобы не занимать место
                
                //Form {
                VStack(spacing: 16) {
                    // Пара заголовков или контента
                    Section{
                        ForEach(0..<20, id: \.self) { index in
                            Text("Контент \(index + 1)")
                                .font(.title)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(8)
                                .shadow(radius: 4)
                        }
                    }
                }
                //.padding(.top, 150) // Отступ сверху
                .offset(y: 200)
                //.contentMargins(150)
            }
        }
    }
}



#Preview {
    ImageOnMainUIView()
}
