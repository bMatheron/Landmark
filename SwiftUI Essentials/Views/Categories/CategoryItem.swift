//
//  CategoryItem.swift
//  SwiftUI Essentials
//
//  Created by bMatheron on 30/05/2023.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
                .overlay{
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.white)
                }
                .shadow(radius: 10)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
