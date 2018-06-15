
 final class Visitor {
     func render(_ facets: [FacetProtocol]) -> String {
         return facets
                    .map { $0.resolver()
//                              .withResolver(renderSize)
                              .withResolver(renderBrand)
                              .resolve() }
                    .reduce("", +)
     }

     func renderBrand (_ brand: Brand) -> String {
         return brand.name
     }

     func renderSize (_ size: Size) -> String {
         return size.title
     }
 }

extension FacetProtocol {

    public func resolver<T>() -> FacetResolver<T> {
        return FacetResolver<T>(entry: self, 
                              resolvers: [])
    }

}

struct FacetResolver<T: FacetProtocol> {

    public typealias Resolver<T> = (T) -> String

    fileprivate let entry: FacetProtocol
    fileprivate let resolvers: [WrappedResolver]

    public func withResolver(_ resolver: @escaping Resolver<T>) -> FacetResolver<T> {
        return FacetResolver<T>(entry: self.entry,
                                resolvers: resolvers + [WrappedResolver.wrapping(resolver)])
    }

    public func resolve() -> String {
        return self
                .resolvers
                .lazy
                .compactMap { $0.resolve(self.entry) }
                .first ?? ""
    }
}

private struct WrappedResolver {

    fileprivate let resolve: (_ item: Any) -> String?

    private init(resolve: @escaping (Any) -> String?) {
        self.resolve = resolve
    }

    static func wrapping<T: FacetProtocol>(_ resolver: @escaping FacetResolver<T>.Resolver<T>) -> WrappedResolver {
        return WrappedResolver { candidate in
            guard let entry = candidate as? T else {
                return nil
            }

            return resolver(entry)
        }
    }
}
