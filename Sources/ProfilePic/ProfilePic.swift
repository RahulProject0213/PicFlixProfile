
import SwiftUI
import Combine


@available(iOS 13.0, macOS 10.15, *)
public struct ProfilePic: View {
    
    @ObservedObject var binder = FetchProfileImage()
    
    public init(url: URL, placeHolder: Image) {
        binder.load(url: url)
    }

    public var body: some View {
        Text("Hello World")
    }
}
