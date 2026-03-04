//
//  StudentCard.swift
//  CorrectionTestTechnique
//
//  Created by Cindy Bajoni on 28/02/2026.
//

import SwiftUI

struct StudentCard: View {
    
    var student: Student
    
    var body: some View {
        
        ZStack {
            
            Image(student.house.rawValue.lowercased())
                .resizable()
                .scaledToFill()
                .frame(width: 320)
                .opacity(0.3)
            
            VStack(spacing: 10) {
                
                Image(student.picture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(4)
                    .background(student.getHouseColor(isDark: false))
                    .cornerRadius(100)
                    .shadow(radius: 8)
                
                Text(student.name)
                    .font(.system(size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)
                    .bold()
                
                Text(student.house.rawValue.uppercased())
                    .font(.system(size: 14))
                    .foregroundStyle(student.getHouseColor(isDark: false))
                    .padding(.top, -8)
                
                
                Text("\(student.year)e année")
                    .fontWeight(.semibold)
                    .font(.system(size: 14))
                    .foregroundStyle(.white)
                    .padding(8)
                    .background(Color("\(student.house.rawValue.lowercased())"))
                    .cornerRadius(8)
            }
            
        }
        .padding()
        .foregroundStyle(.encre)
        .frame(width: 178, height: 205)
        .background(Color("\(student.house.rawValue.lowercased())").opacity(0.3))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(student.getHouseColor(isDark: true).opacity(0.7), lineWidth: 2)
        )
        .cornerRadius(16)
        .shadow(radius: 8)
        
    }
    
}

#Preview {
    StudentCard(student: students[0])
}
