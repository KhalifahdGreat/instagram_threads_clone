//
//  FeeView.swift
//  instagram_threads_clone
//
//  Created by Khalifah on 09/09/2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                LazyVStack{
                    ForEach(0 ... 10, id: \.self){thread in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("DEBUG: Refresh threads")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button{
                    
                }label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    NavigationStack{
        FeedView()
    }
}
