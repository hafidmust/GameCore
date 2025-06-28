// The Swift Programming Language
// https://docs.swift.org/swift-book

/// GameCore - Domain layer and utilities for Game Catalog app
/// This package contains:
/// - Domain Layer: Entities, Repository protocols, Use Cases
/// - Utilities: Network error handling, constants, view extensions

// Re-export all public APIs
@_exported import Foundation
@_exported import SwiftUI
@_exported import Combine

// Public API exports for easy access
public typealias GameCoreConstants = APIConstants
public typealias GameCoreError = NetworkError
