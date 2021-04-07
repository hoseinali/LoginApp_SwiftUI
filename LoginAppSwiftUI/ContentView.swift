//
//  LoginView.swift
//  LoginAppSwiftUI
//
//  Created by Hossein Ali Alborzi on 4/6/21.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var pass = ""

    var body: some View {
        VStack(spacing: 20){
            Spacer()
            Text("Messenger").font(.system(size: 64, weight: .semibold)).foregroundColor(Color.blue.opacity(0.6))
            HStack{
                Image(systemName: "envelope")
                TextField("Email", text: $email).padding(.horizontal, 20)
            }.frame( height:60).padding(.horizontal, 20).background(Color.white.opacity(0.6)).cornerRadius(8).padding(.horizontal, 20)
            
            HStack{
                Image(systemName: "lock")
                TextField("password", text: $pass).padding(.horizontal, 20)
            }.frame( height:60).padding(.horizontal, 20).background(Color.white.opacity(0.6)).cornerRadius(8).padding(.horizontal, 20)
           // Spacer()
            Button(action: {}, label: {
                Text("Login").foregroundColor(.white).font(.system(size: 20, weight: .medium))
            }).frame( maxWidth: .infinity).padding(.vertical, 20).background(Color.blue.opacity(0.8)).cornerRadius(8).padding(.horizontal,20).padding(.vertical, 20)
            
            Spacer()
            Spacer()
        }.background(Image("MapLoginBackGround").resizable().aspectRatio(contentMode: .fill).background(Color(.lightGray))).edgesIgnoringSafeArea(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView().previewDevice("iPhone 8")
            LoginView().previewDevice("iPhone X")
            LoginView().previewDevice("iPhone 11 Pro Max")
            
        }
    }
}
