import SwiftUI

extension View {
  /// Enables visionOS "Look to Scroll" on the scroll views in this hierarchy.
  /// No-op on other platforms.
  public func lookToScroll() -> some View {
    #if os(visionOS)
      scrollInputBehavior(.enabled, for: .look)
    #else
      self
    #endif
  }
}
