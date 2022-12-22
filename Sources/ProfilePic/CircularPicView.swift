//
//  SwiftUIView.swift
//  
//
//  Created by Rahul ANAND on 17/12/22.
//

import SwiftUI

@available(iOS 13.0, *)
struct CircularPicView: View {
    var imageToRender: UIImage
    var body: some View {
        VStack {
            Image(uiImage: imageToRender).resizable().frame(width: 50, height: 50, alignment: .center).clipShape(Circle())
        }
    }
}
@available(iOS 13.0, *)
struct CircularPicView_Previews: PreviewProvider {
    static var previews: some View {
        CircularPicView(imageToRender: UIImage()).previewLayout(.sizeThatFits)
    }
}
