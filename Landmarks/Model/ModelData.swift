//
//  ModelData.swift
//  Landmarks
//
//  Created by test on 11/15/24.
//

import Foundation




func load<T: Decodable>(_ fileName: String) throws ->  T{
    let data : Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else{
        throw LandMarkDataError.invalidFileNameOrPath
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        throw LandMarkDataError.invalidData
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        throw LandMarkDataError.invalidDataParsing
    }
}


