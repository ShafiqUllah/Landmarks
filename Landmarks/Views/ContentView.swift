//
//  ContentView.swift
//  Landmarks
//
//  Created by test on 11/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView()
                .frame(height:300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment:.leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.green)
                
                HStack{
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    
                    Spacer()
                    Text("California")
                }
                
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                
                Text("Descriptive text goes here")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
