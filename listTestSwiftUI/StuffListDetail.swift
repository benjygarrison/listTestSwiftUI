//
//  StuffListDetail.swift
//  listTestSwiftUI
//
//  Created by Ben Garrison on 5/22/22.
//

import SwiftUI

struct StuffListDetail: View {
    
    let stufflist: StuffList
    
    @State private var zoomed: Bool = false
    
    var body: some View {
        
        VStack {
            Image(stufflist.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .frame(width: 250, height: 250, alignment: .center)
                .onTapGesture {
                    withAnimation {
                    self.zoomed.toggle() //toggle changes between true/false boolean values
                    }
                }
                
            Text(stufflist.word)
        }.navigationBarTitle(stufflist.word, displayMode: .inline)
        
    }
}

struct StuffListDetail_Previews: PreviewProvider {
    static var previews: some View {
        StuffListDetail(stufflist: StuffList(word: "test", imageURL: "rock", number: 10))
    }
}
