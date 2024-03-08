//
//  ContentView.swift
//  SwiftScribbles
//
//  Created by Neftalí Lara on 3/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            List {
                Section{
                    NavigationLink {
                        Text("Item 2")
                    } label: {
                        HStack(spacing: 12){
                            Circle()
                                .frame(height: 32)
                                .foregroundStyle(Gradient(colors: [Color.blue, Color.cyan]))
                            VStack(alignment: .leading){
                                Text("Welcome")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                Text("Learn how to learn from this app")
                                    .fontWeight(.light)
                                    .foregroundStyle(Color.gray)
                            }
                        }
                    }
                }
                Section("Upcoming projects"){
                    NavigationLink {
                        Text("A Game project")
                    } label: {
                        Label("2D Game", systemImage: "gamecontroller")
                    }
                    NavigationLink {
                        Text("AI Chat")
                    } label: {
                        Label("AI Chat", systemImage: "message.badge.waveform")
                    }
                }
            }.navigationTitle("Swift Scribbles")
        } detail: {
            Text("Something here")
        }

    }
}

#Preview {
    ContentView()
}
