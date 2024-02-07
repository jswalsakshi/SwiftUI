//
//  FrameworkDetailView.swift
//  FrameworkApp
//
//  Created by sakshi.j on 05/02/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            AFButton(title: "Learn More")
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: Binding.constant(true))
}

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Button(title) {
            
        }
        .font(.title2)
        .fontWeight(.semibold)
        .frame(width: 280, height: 50)
        .background(.red)
        .foregroundColor(.white)
        .cornerRadius(10.0)
    }
}
