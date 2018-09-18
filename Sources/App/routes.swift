import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    let baseURL = "https://chwe-service-2-development.vapor.cloud"

    router.get("hello-forward") { req in
        return try req.client().get("\(baseURL)/hello")
    }

    router.get("google-forward") { req in
        return try req.client().get("\(baseURL)/google")
    }

    router.get("google-forward-map") { req in
        return try req.client().get("\(baseURL)/google-map")
    }
}
