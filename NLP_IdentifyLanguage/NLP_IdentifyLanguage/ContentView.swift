//
//  ContentView.swift
//  NLP_IdentifyLanguage
//
//  Created by Manish on 23/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewmodel = ContentViewModel()
    
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Text("Text:")
                Text(viewmodel.txt)
            }
            .frame(maxWidth: .infinity)
            
            HStack {
                Text("Language:")
                Text(viewmodel.foundLanguage)
            }
            .frame(maxWidth: .infinity)
            
            Button {
                viewmodel.identify()
            } label: {
                Text("Find out")
            }
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
