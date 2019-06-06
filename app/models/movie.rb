class Movie < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  settings do
    mappings dynamic: false do
      indexes :title, type: :text
      indexes :synopsis, type: :text, analyzer: :english
      indexes :rating, type: :text
      indexes :released, type: :text
    end
  end

  # Custom search with boolean match
  # def self.search_published(query)
  #   self.search({
  #     query: {
  #       bool: {
  #         must: [
  #         {
  #           multi_match: {
  #             query: query,
  #             fields: [:title, :synopsis, :rating, :released]
  #           }
  #         }
  #         # ,{
  #         #   match: {
  #         #     published: true
  #         #   }
  #         # }
  #         ]
  #       }
  #     }
  #   })
  # end
end
