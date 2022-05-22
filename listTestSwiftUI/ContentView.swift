//
//  ContentView.swift
//  listTestSwiftUI
//
//  Created by Ben Garrison on 5/22/22.
//

import SwiftUI

struct ContentView: View {
    
    let stuffLists = StuffList.listOfStuff() //call model struct
    
    var body: some View {
            
        NavigationView {
        
        List(self.stuffLists, id: \.word) { stuffList in
            NavigationLink(destination: StuffListDetail(stufflist: stuffList)) {
            StuffListCell(stuffList: stuffList)
            // cmd + click (HStack, in this case) --> Extract Subview --> create subview below
            }
        }
            
        .navigationBarTitle("Stuff List")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct StuffListCell: View {
    
    let stuffList: StuffList // call model struct
    
    var body: some View {
        HStack{
            Image(stuffList.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(100)
            VStack(alignment: .leading) {
            Text(stuffList.word)
                // .font(.title)
                Text(String(format: "%.1f", stuffList.number))
            }
        }
    }
}
