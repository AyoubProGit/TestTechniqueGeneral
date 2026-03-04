//
//  Models.swift
//  TestTechniqueExtended26
//
//  Created by Cindy Bajoni on 09/12/2025.
//

import Foundation
import SwiftUI


struct Student: Identifiable {
    var id = UUID()
    var name: String
    var house: House
    var year: Int
    var isPrefect: Bool
    var picture: String
    var description: String
    var patronus: String?
    
    func getHouseColor(isDark: Bool) -> Color {
        switch house {
        case .gryffindor:
            return isDark ? .darkgryffondor : .gryffondor
        case .slytherin:
            return isDark ? .darkserpentard : .serpentard
        case .hufflepuff:
            return isDark ? .darkpoufsouffle : .poufsouffle
        case .ravenclaw:
            return isDark ? .darkserdaigle : .serdaigle
        }
    }
}




enum House: String, CaseIterable, Identifiable {
    var id : RawValue { rawValue }
    
    case gryffindor = "Gryffondor"
    case slytherin = "Serpentard"
    case hufflepuff = "Poufsouffle"
    case ravenclaw = "Serdaigle"
}


