
 final class Basic {
     func render(_ facets: [FacetProtocol]) -> String {
         var result = ""
         for facet in facets {
             result += renderFacet(facet)
         }
         return result
     }

     func renderFacet(_ facet: FacetProtocol) -> String {
         switch facet.type {
             case .BRAND:
                let brand: Brand = facet as! Brand
                return brand.name
             case .SIZE:
                let size: Size = facet as! Size
                return size.title
             case .CATEGORY:
                let category: Category = facet as! Category
                return category.identifier
         }
     }
 }
