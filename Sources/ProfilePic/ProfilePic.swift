
import SwiftUI
import Combine
import Foundation

@available(iOS 13.0,macOS 10.15, *)
public struct ProfilePic: View {
    
    @ObservedObject var binder = FetchProfileImage()
    
    public init(url: URL, placeHolder: Image) {
        binder.load(url: url)
    }

    public var body: some View {
        VStack {
            CircularPicView(imageToRender: binder.image ?? UIImage())
        }
    }
}
