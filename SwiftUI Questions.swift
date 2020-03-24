//
//  SwiftUI Questions.swift
//  Midterm
//
//  Created by CSUFTitan on 3/23/20.
//  Copyright © 2020 Aiden Hadisi. All rights reserved.
//

//SWIFT UI MIDTERM QUESTIONS
// AIDEN HADISI

//QUESTION 1:
import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("iOS\nDeveloper")
            .padding()
            .background(Color.red)
            .padding()
            .background(Color.blue)
            .padding()
            .padding()
            .background(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// =============================================================


//QUESTION 2:

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            //Do nothing
        }) {
            Text("Live long and prosper")
        }
        .frame(width: 200, height: 200)
        .background(Color.red)
        .foregroundColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// =============================================================


//QUESTION 3:
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Text("Hello world!")
                Text("Hello world!")
            }
        .navigationBarTitle(Text("SwiftUI"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// =============================================================

//QUESTION 4:
import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0;
    var body: some View {
        Button(action: {
            self.tapCount += 1
        }) {
            Text("Tap Count Is: \(self.tapCount)")
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//QUESTION 5:
// SAME AS THE QUESTION 4
