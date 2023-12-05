//
//  FollowerView.swift
//  GitHubFollowers
//
//  Created by Carlos Kimura on 05/12/23.
//

import SwiftUI

struct FollowerView: View {
    
    var follower: Follower
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: follower.avatarUrl)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                Image("avatar-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Text(follower.login)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.6)
        }
        
    }
}

#Preview {
    FollowerView(follower: Follower(login: "cKimi", avatarUrl: ""))
}
