//
//  ContentView.swift
//  CorrectionTestTechnique
//
//  Created by Cindy Bajoni on 27/02/2026.
//

import SwiftUI

struct ContentView: View {
    
    var columns = [ GridItem(.flexible()), GridItem(.flexible())]
    
    @State var houseFilter: House? = nil
    
    func fitleredStudentsByHouse() -> [Student] {
            if let houseFilter {
                return students.filter { student in student.house == houseFilter }
            } else {
                return students
            }
        }
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.darkPurpleBg, .purpleBg], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    
                    Image("hogwarts")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 38)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {

                        ForEach(House.allCases) { house in
                            
                            Button {
                                withAnimation {
                                    if houseFilter == house  {
                                        houseFilter = nil
                                    } else {
                                        houseFilter = house
                                    }
                                }
                            } label: {
                                Text(house.rawValue)
                                    .padding(8)
                                    .background(houseFilter != house ? Color(.colorbuttons) :  Color(.whitebutton).opacity(0.8))
                                    .cornerRadius(12)
                                    .foregroundStyle(houseFilter != house ? .textbuttons : .darkPurpleBg)
                                    .overlay(
                                            RoundedRectangle(cornerRadius: 100)
                                                .stroke(Color.textbuttons.opacity(0.1), lineWidth: 1)
                                        )
                            }
                        }
                    }
                        .padding(.horizontal)
                }

                    
                    ScrollView(showsIndicators: false) {
                        LazyVGrid(columns: columns) {
                            ForEach(fitleredStudentsByHouse()) { student in
                                NavigationLink {
                                    StudentDetails(student: student)
                                } label: {
                                    StudentCard(student: student)
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
