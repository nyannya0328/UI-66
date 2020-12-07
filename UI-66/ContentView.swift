//
//  ContentView.swift
//  UI-66
//
//  Created by にゃんにゃん丸 on 2020/12/07.
//

import SwiftUI
import SafariServices

struct ContentView: View {
    
    @State var show = false
    var body: some View {
        Button(action: {show.toggle()}, label: {
            Text("Tap")
        })
        .fullScreenCover(isPresented: $show,content: {
            SafariView()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SafariView : UIViewControllerRepresentable {
    
    var url = "https://www.apple.com/jp/?afid=p238%7CsKSMckWTz-dc_mtid_18707vxu38484_pcrid_479606761351_pgrid_13140806301_&cid=aos-jp-kwgo-brand--slid---product--"
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        
    let view = SFSafariViewController(url: URL(string: url)!)
        
        return view
        
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    
}
