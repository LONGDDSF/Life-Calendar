//
//  ContentView.swift
//  Life Calendar
//
//  Created by Wesley Van der Klomp on 9/3/19.
//  Copyright © 2019 wes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            Text("A Lifetime")
            Timeline()
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
