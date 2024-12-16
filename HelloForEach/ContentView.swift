//
//  ContentView.swift
//  HelloForEach
//
//  Created by Willy Hsu on 2024/12/16.
//

import SwiftUI

struct ContentView: View {
    let lang = ["美洲","亞洲","歐洲","非洲","大洋洲"]
    @State private var selectedItem = "亞洲"
    var body: some View {
        VStack{
            HStack {
                ForEach(lang, id: \.self) { item in
                    Button {
                        print(item)
                        selectedItem = item
                    } label: {
                        Text(item)
                            .frame(width:(UIScreen.main.bounds.width ) / 10)
                            .foregroundColor(Color.black)
                            .font(.system(size: 13))
                            .padding()
                    }.overlay {
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.black, lineWidth: selectedItem == item ? 3:1)
                    }.animation(.easeInOut, value: selectedItem)
                    
                }
            }
            .padding()
            List{
                ForEach(lang, id: \.self) { item in
                    Text(item)
                }
            }.listStyle(.plain)
        }
    }
}

#Preview {
    ContentView()
}
