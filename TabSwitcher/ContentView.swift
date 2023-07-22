//
//  ContentView.swift
//  TabSwitcher
//
//  Created by Amit Gupta on 7/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelected=1
    var body: some View {
        TabView(selection:$tabSelected) {
            Tab1View(tabSelect:$tabSelected)
                .tabItem{
                    Label("Tab 1",systemImage: "list.number")
                }
                .tag(1)
            Tab2View(tabSelect:$tabSelected)
                .tabItem{
                    Label("Tab 2",systemImage: "list.number")
                }
                .tag(2)
            Tab3View(tabSelect:$tabSelected)
                .tabItem{
                    Label("Tab 3",systemImage: "list.number")
                }
                .tag(3)
        }
    }
}

struct Tab1View: View {
    @Binding var tabSelect:Int
    var body: some View {
        
        VStack {
            Text("Page 1")
                
            Button("Change to Tab 2") {
                tabSelect=2;
            }
            Button("Change to Tab 3") {
                tabSelect=3;
            }
        }
        .font(.largeTitle)
    }
}

struct Tab2View: View {
    @Binding var tabSelect:Int
    var body: some View {
        VStack {
            Text("Page 2")
            Button("Change to Tab 1") {
                tabSelect=1;
            }
            Button("Change to Tab 3") {
                tabSelect=3;
            }
        }
        .font(.largeTitle)
    }
}

struct Tab3View: View {
    @Binding var tabSelect:Int
    var body: some View {
        VStack {
            Text("Page 3")
            Button("Change to Tab 1") {
                tabSelect=1;
            }
            Button("Change to Tab 2") {
                tabSelect=2;
            }
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
