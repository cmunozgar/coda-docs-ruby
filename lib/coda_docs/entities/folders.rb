module CodaDocs
  module Entities
    class Folders < Entity
      def all(doc_id)
        response = connection.get("/docs/#{doc_id}/folders", query: options)
        response.parsed_response['items']
      end

      def find(doc_id:, folder_id:)
        connection.get("/docs/#{doc_id}/folders/#{folder_id}", query: options)
      end
    end
  end
end
