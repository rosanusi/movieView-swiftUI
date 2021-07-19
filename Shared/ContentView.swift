//
//  ContentView.swift
//  Shared
//
//  Created by Sanusi, Ridwan Oluwabusola on 15.07.21.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        MovieView()
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
