//
//  DetailsProSwiftUIView.swift
//  BaseProject
//
//  Created by user on 17.01.2025.
//
//
//import SwiftUI
//
//struct DetailsProSwiftUIView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    DetailsProSwiftUIView()
//}

//
//  StationScreen.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct StationScreen: View {
    var body: some View {
        // Scroll
        ScrollView {
            // Main Vertical Stack
            VStack {
                // Hero
                Image("myImage")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 480)
                    .clipped()
                    .overlay {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("W")
                                .font(.system(.title, weight: .ultraLight))
                            Text("Fulton Street Station")
                                .font(.system(.headline, weight: .regular))
                            // Lines VStack
                            VStack(alignment: .leading, spacing: 2) {
                                // Row 1
                                HStack(spacing: 2) {
                                    Image(systemName: "a.circle.fill")
                                        .foregroundColor(.blue)
                                    Image(systemName: "c.circle.fill")
                                        .foregroundColor(.blue)
                                    Image(systemName: "j.circle.fill")
                                        .foregroundColor(Color(.systemBrown))
                                    Image(systemName: "z.circle.fill")
                                        .foregroundColor(Color(.systemBrown))
                                    Spacer()
                                }
                                .font(.title2)
                                // Row 2
                                HStack(spacing: 2) {
                                    Image(systemName: "2.circle.fill")
                                        .foregroundColor(.red)
                                    Image(systemName: "3.circle.fill")
                                        .foregroundColor(.red)
                                    Image(systemName: "4.circle.fill")
                                        .foregroundColor(.green)
                                    Image(systemName: "5.circle.fill")
                                        .foregroundColor(.green)
                                    Spacer()
                                }
                                .font(.title2)
                            }
                        }
                        .padding()
                        .frame(width: 270, alignment: .center)
                        .clipped()
                        .background {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(Color(.tertiarySystemBackground))
                                .shadow(color: Color(.sRGBLinear, red: 0/255, green: 0/255, blue: 0/255).opacity(0.04), radius: 8, x: 0, y: 4)
                        }
                        .padding(.bottom)
                    }
                // Vertical Stack Overlay
                VStack(spacing: 10) {
                    HStack {
                        // Directions
                        VStack(spacing: 4) {
                            Image(systemName: "arrow.triangle.turn.up.right.circle.fill")
                                .imageScale(.medium)
                            Text("Directions")
                                .font(.system(.footnote, weight: .medium))
                        }
                        .frame(width: 120)
                        .clipped()
                        .padding(.horizontal)
                        .foregroundColor(.blue)
                        .padding(.vertical, 8)
                        .background {
                            Rectangle()
                                .fill(.clear)
                                .background(Material.regular)
                                .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                        }
                        // Save
                        VStack(spacing: 4) {
                            Image(systemName: "square.and.arrow.down.fill")
                                .imageScale(.medium)
                            Text("Saved")
                                .font(.system(.footnote, weight: .medium))
                        }
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .padding(.horizontal)
                        .foregroundColor(.blue)
                        .padding(.vertical, 8)
                        .background {
                            Rectangle()
                                .fill(.clear)
                                .background(Material.regular)
                                .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                        }
                        VStack(spacing: 4) {
                            Image(systemName: "square.and.arrow.up")
                                .imageScale(.medium)
                            Text("Share")
                                .font(.system(.footnote, weight: .medium))
                        }
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .padding(.horizontal)
                        .foregroundColor(.blue)
                        .padding(.vertical, 8)
                        .background {
                            Rectangle()
                                .fill(.clear)
                                .background(Material.regular)
                                .mask { RoundedRectangle(cornerRadius: 10, style: .continuous) }
                        }
                    }
                    .padding(.horizontal)
                    VStack {
                        Text("DESTINATIONS")
                            .font(.system(.footnote, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .clipped()
                            .foregroundColor(.secondary)
                        // Destination
                        VStack(alignment: .leading) {
                            Divider()
                            HStack {
                                Text("The Metropolitan Museum of Art")
                                    .font(.system(.headline, weight: .semibold))
                                Spacer()
                                Image(systemName: "a.circle.fill")
                                    .foregroundColor(.blue)
                            }
                            Text("25 min • Open until 8:00pm")
                                .font(.system(.subheadline, weight: .regular))
                                .foregroundColor(.secondary)
                            Image("USA")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity, maxHeight: 250, alignment: .bottom)
                                .clipped()
                                .mask {
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                }
                        }
                        .padding(.top)
                        // Destination
                        VStack(alignment: .leading) {
                            Divider()
                            HStack {
                                Text("Washington Square Park")
                                    .font(.system(.headline, weight: .semibold))
                                Spacer()
                                Image(systemName: "4.alt.circle.fill")
                                    .foregroundColor(.green)
                            }
                            Text("16 min • Open 24 hours")
                                .font(.system(.subheadline, weight: .regular))
                                .foregroundColor(.secondary)
                            Image("China")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity, maxHeight: 250, alignment: .bottom)
                                .clipped()
                                .mask {
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                }
                        }
                        .padding(.top)
                        // Destination
                        VStack(alignment: .leading) {
                            Divider()
                            HStack {
                                Text("Strand Book Store")
                                    .font(.system(.headline, weight: .semibold))
                                Spacer()
                                Image(systemName: "5.circle.fill")
                                    .foregroundColor(.green)
                            }
                            Text("16 min • Open until 8:00pm")
                                .font(.system(.subheadline, weight: .regular))
                                .foregroundColor(.secondary)
                            Image("Ukraine")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity, maxHeight: 250, alignment: .bottom)
                                .clipped()
                                .mask {
                                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                                }
                        }
                        .padding(.top)
                    }
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(Color(.tertiarySystemBackground))
                            .shadow(color: Color(.sRGBLinear, red: 0/255, green: 0/255, blue: 0/255).opacity(0.07), radius: 8, x: 0, y: 4)
                    }
                    .padding(.horizontal)
                }
                .offset(x: 0, y: -100)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .clipped()
        
    }
}

struct StationScreen_Previews: PreviewProvider {
    static var previews: some View {
        StationScreen()
    }
}

