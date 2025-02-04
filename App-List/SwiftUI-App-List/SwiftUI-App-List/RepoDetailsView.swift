//
//  VideoDetailView.swift
//  SwiftUI-List-Starter
//
//  Created by Andi Ionel Antohi on 07.08.2023.
//

import SwiftUI

struct RepoDetailsView: View {
    var repo : Repo
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Image(repo.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            Text(repo.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            HStack(spacing: 40) {
                Text(repo.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Text(repo.description)
                .font(.body)
                .padding()
            Spacer()
            Link(destination: repo.url, label: {
                Text("Visit now")
                    .bold()
                    .font(.title2)
                    .frame(width: 280, height: 50)
                    .background(Color(.systemRed))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            })
        }
    }
}

struct RepoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RepoDetailsView(repo: RepoList.top.first!)
    }
}
