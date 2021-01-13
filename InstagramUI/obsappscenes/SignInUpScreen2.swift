//
//  SignInUpScreen2.swift
//  InstagramUI
//
//  Created by Asadulla Juraev on 13.01.2021.
//

import SwiftUI

struct SignInUpScreen2: View {
    @EnvironmentObject var status2: Status2
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Image("profile_pic").resizable().aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                TextField("Email", text: $email)
                    .frame(height: 45).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(25)
                SecureField("Password", text: $password)
                    .frame(height: 45).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(25)
                Button(action: {
                    UserDefaults.standard.set("pdp@gmail.com", forKey: "userid")
                    status2.listen()
                }, label: {
                    Spacer()
                    Text("Sign In")
                    Spacer()
                })
                .frame(height: 45).background(Color.red)
                .foregroundColor(.white).cornerRadius(25)
                Spacer()
                HStack{
                    Text("Don`t have an account?")
                    NavigationLink(
                        destination: SignUp2(),
                        label: {
                            Text("Sign Up")
                        }).font(.system(size: 18))
                }.foregroundColor(.blue)
            }.padding()
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct SignUp2: View {
    @Environment(\.presentationMode) var presented
    @State var fname = ""
    @State var lname = ""
    @State var email = ""
    @State var address = ""
    @State var password = ""
    var body: some View {
        VStack{
            Spacer()
            TextField("Firstname", text: $fname)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            TextField("Lastname", text: $lname)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            TextField("Email", text: $email)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            TextField("Address", text: $address)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            TextField("Password", text: $password)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
            Button(action: {
                
            }, label: {
                HStack{
                    Spacer()
                    Text("Sign Up")
                        .foregroundColor(.white)
                    Spacer()
                }
            }).frame(height: 45).background(Color.red)
            .cornerRadius(25)
            Spacer()
            HStack{
                Text("Already have an account?")
                    .foregroundColor(.blue)
                Button(action: {
                    presented.wrappedValue.dismiss()
                }, label: {
                    Text("Sign In")
                })
                .font(.system(size: 18))
            }
        }.padding()
    }
}

struct SignInUpScreen2_Previews: PreviewProvider {
    static var previews: some View {
        SignInUpScreen2()
    }
}
