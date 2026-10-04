import SwiftUI
import WebKit

/// Card Night Scorepad as an iPhone app: the bundled index.html runs full screen in a web view.
/// Games are saved on the phone (the page's local storage), and everything works offline.
@main
struct ScoreCountApp: App {
    var body: some Scene {
        WindowGroup {
            ScorepadView()
                .ignoresSafeArea()
                .background(Color(red: 8 / 255, green: 17 / 255, blue: 14 / 255).ignoresSafeArea())
                .preferredColorScheme(.dark)
        }
    }
}

struct ScorepadView: UIViewRepresentable {
    private static let background = UIColor(red: 8 / 255, green: 17 / 255, blue: 14 / 255, alpha: 1)

    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.websiteDataStore = .default()
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []

        let web = WKWebView(frame: .zero, configuration: config)
        web.isOpaque = false
        web.backgroundColor = Self.background
        web.scrollView.backgroundColor = Self.background
        // The page pads itself for the notch and home indicator, so the web view runs edge to edge.
        web.scrollView.contentInsetAdjustmentBehavior = .never
        web.allowsLinkPreview = false

        if let page = Bundle.main.url(forResource: "index", withExtension: "html") {
            web.loadFileURL(page, allowingReadAccessTo: page.deletingLastPathComponent())
        }
        return web
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
