//
//  LandmarkViewModel.swift
//  Landmarks
//
//  Created by test on 11/15/24.
//

import Foundation

class LandmarkViewModel: ObservableObject{
    @Published var landmarks: [Landmark]?
    
    func getLandmarks() throws -> [Landmark]{
        return try load("landmarkData.json")
    }
}
