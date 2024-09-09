//
//  LoginView.swift
//  instagram_threads_clone
//
//  Created by Khalifah on 09/09/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Image("thread_icon")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                VStack{
                    TextField("Enter your Email", text: $email)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .modifier(ThreadsTextFieldModifier())
                    SecureField("Enter your password", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                }
                NavigationLink{
                    Text("Forgot Password")
                } label: {
                    Text("Forgot Password")
                        .foregroundColor(.black)
                        .font(.footnote)
                        .padding(.vertical)
                        .padding(.trailing)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                }
               
                Button {
                    
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .foregroundColor(.black)
                }
                .padding(.vertical, 16)
                
            }
        }
    }
}

#Preview {
    LoginView()
}
