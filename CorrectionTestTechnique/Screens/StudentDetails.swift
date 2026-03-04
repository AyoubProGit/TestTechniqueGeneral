//
//  StudentDetails.swift
//  CorrectionTestTechnique
//
//  Created by Cindy Bajoni on 01/03/2026.
//

import SwiftUI

struct StudentDetails: View {
    
    var student: Student
    
    @State var showPatronus: Bool = false
    
    var body: some View {
        
        
        ZStack {
            
            LinearGradient(colors: [.darkPurpleBg, .purpleBg], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                ZStack  {
                    Color("\(student.house.rawValue.lowercased())")
                        .opacity(0.2)
                    
                    Image(student.house.rawValue.lowercased())
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(2.7)
                        .frame(width: UIScreen.main.bounds.width, height: 300)
                        .clipShape(Rectangle())
                    
                    VStack {
                        
                        Image(student.picture)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 160)
                            .clipShape(Circle())
                            .padding(4)
                            .background(Color("dark\(student.house.rawValue.lowercased())"))
                            .clipShape(Circle())
                            .padding(.bottom, -20)
                        
                        Text(student.name)
                        //                .frame(height: 48)
                            .font(.system(size: 32))
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.white)
                            .bold()
                        
                        Text(student.house.rawValue.uppercased())
                            .font(.system(size: 18))
                            .foregroundStyle(Color("\(student.house.rawValue.lowercased())"))
                            .padding(.bottom, 8)
                        
                        
                        Text("\(student.year)e année")
                            .fontWeight(.semibold)
                            .font(.system(size: 14))
                            .foregroundStyle(.white)
                            .padding(8)
                            .background(Color("\(student.house.rawValue.lowercased())"))
                            .cornerRadius(8)
                        
                    }
                    .padding(.bottom, 20)
                    
                }
                .frame(height: 300)
                
                HStack  {
                    Text("Bio")
                        .font(.system(size: 24))
                        .padding()
                    
                    Spacer()
                    
                    student.isPrefect ? Text("Préfet") : Text("Pas préfet")
                }
                
                ScrollView(showsIndicators: false) {
                    Text(student.description)
                        .padding()
                    
                    
                    //                HStack {
                    //
                    //                    Spacer()
                    //
                    //                    if student.isPrefect {
                    //
                    //                        Image("prefet\(student.house.rawValue.lowercased())")
                    //                            .resizable()
                    //                            .scaledToFit()
                    //                            .frame(height: 200)
                    //
                    //                    }
                    //
                    //                    Spacer()
                    //
                    //
                    //
                    //                    Spacer()
                    //
                    //                }
                    Spacer()
                    
                    HStack {
                        Spacer()
                        VStack {
                            if !showPatronus {
                                
                                ExpectoPatronum(showPatronus: $showPatronus)
                                
                            } else if student.patronus != nil {
                                Image(student.patronus!.lowercased())
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200)
                                    .shadow(color: .white, radius: 12)
                                Text(student.patronus!)
                            } else {
                                Text("Pensez à un souvenir heureux...")
                                    .italic()
                            }
                        }
                        Spacer()
                    }
                    
                    Spacer()
                    
                }
                
            }
            
            
            Spacer()

        }
        .foregroundStyle(.white)
        

        
    }
    //            .background(LinearGradient(colors: [.darkPurpleBg, .purpleBg], startPoint: .top, endPoint: .bottom)
    
}
#Preview {
    StudentDetails(student: students[0])
}
