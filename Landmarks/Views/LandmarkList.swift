//
//  LandmarkList.swift
//  Landmarks
//
//  Created by test on 11/15/24.
//

import SwiftUI

struct LandmarkList: View {
    
    @StateObject var landmarkModel = LandmarkViewModel()
    
    var body: some View {
        NavigationSplitView{
            VStack{
                List(landmarkModel.landmarks ?? [], id: \.id){ landmark in
                    NavigationLink {
                        LandmarkDetails(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }

                }
                .listStyle(.plain)
            }.task {
                do{
                    landmarkModel.landmarks = try landmarkModel.getLandmarks()
                }catch{
                    print("error is :\(error)")
                }
            }.navigationTitle("Landmark")
            
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    LandmarkList()
}
