//
//  LoginView.swift
//  messenger
//
//  Created by Пользователь on 09.04.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationStack{
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
                
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                Button{
                    print("press button Forgot password")
                }label: {
                    Text("Forgot password?")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
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
                
                HStack{
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width/2-40,
                               height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width/2-40,
                               height: 0.5)
                }
                .foregroundColor(.gray)
                
                HStack{
                    Image("facebook-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    
                    Button("Continue with Facebook"){
                        print("press button Facebook")
                    }
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                }label: {
                    HStack{
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
