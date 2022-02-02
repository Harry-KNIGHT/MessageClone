//
//  ContentView.swift
//  MessageCloneApp
//
//  Created by Elliot Knight on 02/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var messages = Message.messages
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List {
                    ForEach(messages) { message in
                        HStack {
                            ImageCell(message: message, width: 50)
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(message.name)
                                        .font(.headline.bold())
                                    Spacer()
                                }
                                Text(message.messageContent)
                                    .foregroundColor(.secondary)
                                    .padding(.bottom, 5)
                            }
                        }
                    }
                    .onDelete(perform: deletMessage)
                }
                .toolbar {
                    ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                        EditButton()
                        
                    }
                    ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                        Button(action: {}, label: { Image(systemName: "square.and.pencil")})
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Messages")
        }
    }
    func deletMessage(at indexSet: IndexSet) {
        messages.remove(atOffsets: indexSet)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
