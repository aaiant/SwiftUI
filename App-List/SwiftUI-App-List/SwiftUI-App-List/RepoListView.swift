import SwiftUI

struct RepoListView: View {
    var repos : [Repo] = RepoList.top
    var body: some View {
        NavigationView{
            List(repos, id: \.id) { repo in
                NavigationLink(destination: RepoDetailsView(repo: repo), label: {
                    RepoCell(repo: repo)
                })
            }.navigationBarTitle(Text("Top Repos on GitHub"))
        }
    }
}

struct RepoCell : View {
    var repo : Repo
    
    var body : some View {
        HStack {
            Image(repo.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4)
                .padding(.vertical, 4)
            VStack(alignment: .leading, spacing: 5) {
                Text(repo.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                Text(repo.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RepoListView()
    }
}
