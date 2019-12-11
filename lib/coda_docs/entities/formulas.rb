module CodaDocs
  module Entities
    class Formulas < Entity
      def all(doc_id)
        response = connection.get("/docs/#{doc_id}/formulas", query: options)
        response.parsed_response['items']
      end

      def find(doc_id:, formula_id:)
        connection.get("/docs/#{doc_id}/formulas/#{formula_id}", query: options)
      end
    end
  end
end
