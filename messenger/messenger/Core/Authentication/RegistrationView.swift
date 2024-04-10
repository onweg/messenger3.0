//
//  RegistrationView.swift
//  messenger
//
//  Created by Пользователь on 09.04.2024.
//

import SwiftUI

struct RegistrationView: View {
    
    @State var email = ""
    @State var fullname = ""
    @State var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Spacer()
            
            Image("messanger-app-icon") // поменять на messEnger
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .padding()
            
            TextField("Enter your email", text: $email)
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGroupedBackground))
                .cornerRadius(10)
                .padding(.horizontal, 24)
            
            TextField("Enter your fullname", text: $fullname)
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGroupedBackground))
                .cornerRadius(10)
                .padding(.horizontal, 24)
            
            TextField("Enter your email", text: $email)
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGroupedBackground))
                .cornerRadius(10)
                .padding(.horizontal, 24)
            
            Button{
                print("press buyyon login")
            }label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 55)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
             
            Spacer()
            
            Button{
                dismiss()
            }label: {
                HStack{
                    Text("Already have an account?")
                    
                    Text("Sign in")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
