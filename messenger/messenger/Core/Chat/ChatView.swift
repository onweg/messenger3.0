//
//  ChatView.swift
//  messenger
//
//  Created by Пользователь on 10.04.2024.
//

import SwiftUI

struct ChatView: View {
    
    @State var messageText = ""
    var user: User
    
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    CircularProfileImageView(user: user, size: .xLarge)
                    
                    Text(user.fullnane)
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text("Messanger")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                ForEach(0 ... 10, id: \.self){message in
                    ChatMessageCell(isFromCurrentUser: Bool.random())
                }
            }
            ZStack(alignment: .trailing){
                TextField("Message...", text: $messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .font(.subheadline)
                
                Button{
                    print("send message")
                }label: {
                    Text("Send")
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(user: User.MOCK_USER)
    }
}
