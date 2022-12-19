//
//  File.swift
//  
//
//  Created by Rahul ANAND on 17/12/22.
//

import Foundation
import Combine
import SwiftUI

@available(iOS 13.0, *)
class FetchProfileImage: ObservableObject {
    private var subscription: AnyCancellable?
    @Published private(set) var image: UIImage?
    
    func load(url: URL) {
        subscription = URLSession.shared.dataTaskPublisher(for: url).map {
            UIImage(data: $0.data)
        }.replaceError(with: nil).receive(on: DispatchQueue.main).assign(to: \.image, on: self)
    }
    
    func cancel() {
        subscription?.cancel()
    }
    
}
