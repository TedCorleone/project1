//
//  ActivityIndicator.swift
//  Netflix
//
//  Created by terry on 2022/11/29.
//

import Foundation
import SwiftUI

struct ActivityIndicator: UIViewRepresentable {

    @Binding var animate: Bool
    let style: UIActivityIndicatorView.Style
    
    private let spinner: UIActivityIndicatorView = {
        $0.hidesWhenStopped = true
        return $0
    }(UIActivityIndicatorView(style: .medium))

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        spinner.style = style
        return spinner
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        animate ? uiView.startAnimating() : uiView.stopAnimating()
    }
    func configure(_ indicator: (UIActivityIndicatorView) -> Void) -> some View {
        indicator(spinner)
        return self
    }
}
