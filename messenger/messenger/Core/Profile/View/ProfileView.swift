//
//  ProfileView.swift
//  messenger
//
//  Created by Пользователь on 10.04.2024.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewModel()
    let user: User
    
    var body: some View {
        VStack{
            PhotosPicker(selection: $viewModel.selectedItem){
                if let profileImage = viewModel.profileImage {
                    profileImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                }else{
                    CircularProfileImageView(user: user, size: .xLarge)
                }
            }
            
            Text(user.fullnane)
                .font(.title2)
                .fontWeight(.semibold)
            
            List{
                Section{
                    ForEach(SettingOptionViewModel.allCases, id: \.self){ option in
                        HStack{
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(option.colorImage)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }
                Section{
                    Button("Log Out"){
                        
                    }
                    
                    Button("Delete Account"){
                        
                    }
                }
                .foregroundColor(.red)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USER)
    }
}
