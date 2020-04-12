//
//  ContentView.swift
//  WifiKRecon
//
//  Created by Nathan Metzger on 4/12/20.
//  Copyright © 2020 Metzger inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let keys = Key.loadKey();
    var body: some View {
        Text(keys[0].key ?? "bug");
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

