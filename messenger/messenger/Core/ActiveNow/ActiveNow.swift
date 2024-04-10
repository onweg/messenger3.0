//
//  ActiveNow.swift
//  messenger
//
//  Created by Пользователь on 09.04.2024.
//

import SwiftUI

struct ActiveNowView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(0...15,  id: \.self){_ in
                    VStack{
                        ZStack(alignment: .bottomTrailing){
                            CircularProfileImageView(user: User.MOCK_USER, size: .medium)
                            
                            ZStack{
                                Circle()
                                    .fill(.white)
                                    .frame(width: 18, height: 18)
                                
                                Circle()
                                    .fill(Color(.systemGreen))
                                    .frame(width: 12, height: 12)
                            }
                        }
                        Text("Person")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                    }
                }
            }
            .padding()
        }
        .frame(height: 106)
    }
}

struct ActiveNow_Previews: PreviewProvider {
    static var previews: some View {
        ActiveNowView()
    }
}
