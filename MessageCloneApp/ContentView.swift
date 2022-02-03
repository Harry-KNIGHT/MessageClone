//
//  ContentView.swift
//  MessageCloneApp
//
//  Created by Elliot Knight on 02/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var messages = Message.messages
    @State private var showingAlert = false
   
    
    // Button Animation
    @State var isEditing = false
    @State var selection = Set<String>()
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List() {
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
                                    .lineLimit(2)
                                    .foregroundColor(.secondary)
                                // Text limite
                                // GroupBox
                                    
//                                    .padding(.bottom, 2)
                            }.padding(.bottom)
                        }
                    }
                    .onDelete(perform: deletMessage)
                }
                .toolbar {
                    ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                      EditButton()
                    
                        /*
                            .alert("Do you realy want to delet this conversation ?", isPresented: $showingAlert) {
                                Button("Yes", role: .destructive) { }
                                Button("No", role: .cancel) { }
                            } message: {
                                Text("This conversation will be definitevely deleted.")
                            }*/
                    }
                    ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                        Button(action: {}, label: { Image(systemName: "square.and.pencil")}).animation(.easeIn, value: 0.5)
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
