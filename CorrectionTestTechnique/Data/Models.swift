//
//  Models.swift
//  TestTechniqueExtended26
//
//  Created by Cindy Bajoni on 09/12/2025.
//

import Observation
import SwiftUI

@Observable
class Student: Identifiable {
    var id = UUID()
    var name: String
    var house: House
    var year: Int
    var isPrefect: Bool
    var picture: String
    var description: String
    var patronus: String?
    
    init(id: UUID = UUID(), name: String, house: House, year: Int, isPrefect: Bool, picture: String, description: String, patronus: String? = nil) {
        self.id = id
        self.name = name
        self.house = house
        self.year = year
        self.isPrefect = isPrefect
        self.picture = picture
        self.description = description
        self.patronus = patronus
    }
    
    
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


