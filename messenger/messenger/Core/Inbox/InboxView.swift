//
//  InboxView.swift
//  messenger
//
//  Created by Пользователь on 09.04.2024.
//

import SwiftUI

struct InboxView: View {
    
    @State var showNewMessage = false
    @State var user = User.MOCK_USER
    
    var body: some View {
        NavigationStack{
            ScrollView{
                
                ActiveNowView()
                
                List{
                    ForEach(0 ... 10 , id: \.self){_ in
                        InboxRowView()
                    }
                }
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height - 120)
                
            }
            .navigationDestination(for: User.self, destination: {user in
                ProfileView(user: user)
            })
            .fullScreenCover(isPresented: $showNewMessage, content:{
                NewMessageView()
            })
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack{
                        NavigationLink(value: user){
                            CircularProfileImageView(user: user, size: .xSmall)
                        }
                        
                        Text("Chat")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        showNewMessage.toggle()
                    }label:{
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .foregroundStyle(.black, Color(.systemGray5))
                    }
                }
            }
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
