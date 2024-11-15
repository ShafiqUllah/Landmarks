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
        
        VStack{
            List(landmarkModel.landmarks ?? [], id: \.id){ landmark in
                LandmarkRow(landmark: landmark)
            }
            .listStyle(.plain)
        }.task {
            do{
                landmarkModel.landmarks = try landmarkModel.getLandmarks()
            }catch{
                print("error is :\(error)")
            }
        }
    }
}

#Preview {
    LandmarkList()
}
