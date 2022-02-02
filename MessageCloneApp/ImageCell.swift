//
//  ImageCell.swift
//  MessageCloneApp
//
//  Created by Elliot Knight on 02/02/2022.
//

import SwiftUI

struct ImageCell: View {
    var message: Message
    var width: CGFloat = 50
    var body: some View {
        if message.photo == "" {
            ZStack {
            Circle()
                .frame(width: width, height: width)
                .foregroundColor(.gray)
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: width - 20, height: width - 10)
                    .foregroundColor(.white)
                    .padding(.top, 1)
                Circle()
                    .frame(width: width - 20, height: width - 20)
                    .foregroundColor(.white)
            }
        } else {
        Image(message.photo)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: width)
        }
    }
}

struct ImageCell_Previews: PreviewProvider {
    static var previews: some View {
        ImageCell(message: Message(photo: "avatar10", name: "lui", hourReception: "14:44", messageContent: "eeeee"))
    }
}
