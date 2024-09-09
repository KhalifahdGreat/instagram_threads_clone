//
//  RegistrationView.swift
//  instagram_threads_clone
//
//  Created by Khalifah on 09/09/2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var userName = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Image("thread_icon")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                VStack{
                    TextField("Enter your email", text: $email)
                        .modifier(ThreadsTextFieldModifier())
                    SecureField("Enter your password", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                    TextField("Enter your full name ", text: $fullname)
                        .modifier(ThreadsTextFieldModifier())
                    TextField("Enter your username", text: $userName)
                        .modifier(ThreadsTextFieldModifier())
                }
                Button {
                    
                } label: {
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                .padding(.vertical)
                
                Spacer()
                
                Divider()
                
               Button {
                  dismiss()
                } label: {
                    HStack(spacing: 3) {
                        Text("Already have an account?")
                        Text("Sign In")
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
    RegistrationView()
}
