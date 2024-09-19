//
//  PageTabUIView.swift
//  BaseProject
//
//  Created by user on 19.09.2024.
//

import SwiftUI
import Charts

struct PageTabUIView: View {
    
    @State private var currentIndex = 0 // Индекс текущего активного графика

    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                PieChartView(data: [70, 30], title: "График 1")
                    .tag(0)
                PieChartView(data: [50, 50], title: "График 2")
                    .tag(1)
                PieChartView(data: [40, 60], title: "График 3")
                    .tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 300) // Установите высоту для графиков
            
            // Индикаторы состояния
            HStack(spacing: 20) {
                ForEach(0..<3) { index in
                    Circle() // Индикатор в виде круга
                        .fill(index == currentIndex ? Color.blue : Color.gray) // Цвет в зависимости от состояния
                        .frame(width: index == currentIndex ? 12 : 8, height: index == currentIndex ? 12 : 8) // Увеличенный размер для активного
                        .animation(.easeInOut, value: currentIndex) // Анимация изменения
                }
            }
            .padding(.top, 10)
        }
        .navigationTitle("Графики")
    }
}

struct PieChartView: View {
    
    var data: [Double]
    var title: String

    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .padding()
            
            // Пример кругового графика
            Chart {
                ForEach(data.indices, id: \.self) { index in
                    SectorMark(
                        angle: .value("Value", data[index]),
                        innerRadius: .ratio(0.4),
                        outerRadius: .inset(10)
                    )
                    .foregroundStyle(index == 0 ? .blue : .pink)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 200)
            .padding()
        }
    }
}

struct PageTabUIView_Previews: PreviewProvider {
    static var previews: some View {
        PageTabUIView()
    }
}

