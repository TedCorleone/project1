//
//  SearchBar.swift
//  Netflix
//
//  Created by terry on 2022/11/29.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @State private var isEditing = true
    @Binding var isLoading: Bool
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.graySearchBackground
                .frame(width: 290, height: 36)
                .cornerRadius(8)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.graySearchText)
                    .padding(.leading, 10)
                
                TextField("Search", text: $text)
                    .padding(7)
                    .padding(.leading, -7)
                    .background(Color.graySearchBackground)
                    .cornerRadius(8)
                    .foregroundColor(.white)
                    .onTapGesture {
                        isEditing = true
                    }
                    .animation(.default)
                
                if !text.isEmpty {
                    if isLoading {
                        Button {
                            text = ""
                        } label: {
                            ActivityIndicator(animate: .constant(true), style: .medium)
                                .configure {
                                    $0.color = .white
                                }
                        }
                        .padding(.trailing, 32)
                        .frame(width: 35, height: 35)
                    } else {
                        Button {
                            text = ""
                        } label: {
                           Image(systemName: "xmark.circle.fill")
                                .foregroundColor(Color.graySearchText)
                                .frame(width: 35, height: 35)
                        }
                        .padding(.trailing, 18)
                    }
                }
                
                if isEditing {
                    Button {
                        text = ""
                        isEditing = false
                        hideKeyboard()
                    } label: {
                        Text("Cancel")
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 10)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
                }
                
                
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            SearchBar(text: .constant(""), isLoading: .constant(false))
                .padding()
        }
    }
}
