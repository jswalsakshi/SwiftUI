//
//  DatePickerComponent.swift
//  SwiftUIComponent
//
//  Created by sakshi.j on 15/12/23.
//

import SwiftUI

struct DatePickerComponent: View {
    
    @State private var dateOfBirth = Date.now
    
    var body: some View {
        HStack(alignment: .center, spacing: -50) {
            VStack {
                Text("Date of Birth")
                    .font(Font.custom("Inter", size: 10))
                    .foregroundColor(Color.gray)
                    .frame(width: 280, alignment: .leading)
                
                    
                  .font(
                    Font.custom("Inter", size: 16)
                      .weight(.medium)
                  )
                  .foregroundColor(Color.black)
                  .frame(width: 280, alignment: .leading)
            
            }
            
            Image(systemName: "heart.fill")
                .onTapGesture {
                    openDatePicker()
                }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .frame(width: 312, height: 54, alignment: .center)
        .background(.white)
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .inset(by: 0.5)
                .stroke(Color(red: 0.85, green: 0.85, blue: 0.85), lineWidth: 1)
        )
    }
    
    private func openDatePicker() {
        DatePicker("Date of Birth", selection: $dateOfBirth, displayedComponents: .date)
    }
}

#Preview {
    DatePickerComponent()
}
