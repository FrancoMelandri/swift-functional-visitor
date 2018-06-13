
enum Facets {
    case BRAND
    case SIZE
    case CATEGORY
}

protocol FacetProtocol {
    var type: Facets { get }
}

struct Brand: FacetProtocol {
    let type: Facets = Facets.BRAND
    let name: String

    init(name: String) {
        self.name = name
    }
}

struct Size: FacetProtocol {
    let type: Facets = Facets.SIZE
    let title: String

    init(title: String) {
        self.title = title
    }
}

struct Category: FacetProtocol {
    let type: Facets = Facets.CATEGORY
    let identifier: String

    init(identifier: String) {
        self.identifier = identifier
    }
}
