//
//  ExpectoPatronum.swift
//  CorrectionTestTechnique
//
//  Created by Cindy Bajoni on 01/03/2026.
//

import SwiftUI

struct ExpectoPatronum: View {
    
    @Binding var showPatronus: Bool
    
    var body: some View {
        Button {
            withAnimation {
                showPatronus = true
            }
        } label: {
            Text("Expecto Patronum")
                .fontWeight(.thin)
                .font(.system(size: 24))
                .padding()
                .background(Color(.textbuttons).opacity(0.8))
                .cornerRadius(12)
                .foregroundStyle(.purpleBg)
                .shadow(color: .white, radius: 12)
            
        }
    }
}

#Preview {
    ExpectoPatronum(showPatronus: .constant(true))
}
