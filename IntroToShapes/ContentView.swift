//
//  ContentView.swift
//  IntroToShapes
//
//  Created by Vincent He on 2022-11-17.
//

import SwiftUI

struct Diagonal: Shape
{
    func path(in rect: CGRect) -> Path {
        
        // the path that describes the shape
        var path = Path()
        
        // Here is where we'd descirbe the shape
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        // send back path
        return path
    }
    
    
}

struct ContentView: View {
    var body: some View {
        Diagonal()
            .stroke()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
