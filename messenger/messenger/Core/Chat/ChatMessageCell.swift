//
//  ChatMessageCell.swift
//  messenger
//
//  Created by Пользователь on 10.04.2024.
//

import SwiftUI

struct ChatMessageCell: View {
    
    var isFromCurrentUser: Bool
    
    var body: some View {
        HStack{
            if isFromCurrentUser{
                Spacer()
                Text("test message test message test message test message test message test message")
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .clipShape(ShapeMessage(isFromCurrentUser: isFromCurrentUser))
                    .frame(maxWidth: UIScreen.main.bounds.width / 1.5, alignment: .trailing)
            }else{
                HStack(alignment: .bottom, spacing: 8){
                    CircularProfileImageView(user: User.MOCK_USER, size: .xxSmall)
                    
                    Text("test message test message test message test message test message test message")
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray4))
                        .foregroundColor(.black)
                        .clipShape(ShapeMessage(isFromCurrentUser: isFromCurrentUser))
                        .frame(maxWidth: UIScreen.main.bounds.width / 1.75, alignment: .leading)
                    
                    Spacer()
                }
            }
        }
        .padding(.horizontal, 8)
    }
}

struct ChatMessageCell_Previews: PreviewProvider {
    static var previews: some View {
        ChatMessageCell(isFromCurrentUser: false)
    }
}
