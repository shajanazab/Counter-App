//
//  ContentView.swift
//  Counter App
//
//  Created by shajan azab on 24/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var cookiesEaten = 0
    @State var sweetsEaten = 0
    @State var numbercookies = 80
    var body: some View {
        VStack {
            Text("\(cookiesEaten) cookieseaten")
            Text("There are \(numbercookies-cookiesEaten) cookies left")
            Button {
                print(" Mmmm yummy")
                cookiesEaten += 1
            } label: {
                Text("OM NOM NOM")
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                
            }
            .buttonStyle(.bordered)
            
            if cookiesEaten >= 13 {
                Text("SSTTOOPP!!!!")
            }
            else if cookiesEaten >= 6 {
                Text("Do not eat to many cookies")
            }
            VStack {
                Text("\(sweetsEaten) sweetsEaten")
                Text("There are \(numbercookies-sweetsEaten) cookies left")
                Button {
                    print(" Mmmm yummy")
                    sweetsEaten += 1
                } label: {
                    Text("delicious")
                        .font(.largeTitle)
                        .foregroundColor(.pink)
                    
                }
                .buttonStyle(.bordered)
                
                if sweetsEaten >= 15 {
                    Text("SSTTOPP!! !")
                }
                else if sweetsEaten >= 6 {
                    Text("Do not eat to many cookies")
                }
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
