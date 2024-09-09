//
//  ThreadCell.swift
//  instagram_threads_clone
//
//  Created by Khalifah on 09/09/2024.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                Image("khalifah_o")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading, spacing: 4 ) {
                    HStack {
                        Text("Khalifah_O")
                            .font(.footnote)
                        .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }
                    
                    Text("IOS Developer")
                        .font(.footnote)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    
                    HStack(spacing: 16){
                        Button {
                            
                        }label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            
                        }label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button {
                            
                        }label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button {
                            
                        }label: {
                            Image(systemName: "paperplane")
                        }
                        
                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                }
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    ThreadCell()
}
