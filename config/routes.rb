module TheCommentsManager
  # TheCommentsManager::Routes.mixin(self)

  class Routes
    def self.mixin mapper
      mapper.resources :comments, only: %w[ edit update ] do
        mapper.collection do
          mapper.get :manage
          mapper.get :my_comments

          mapper.get :draft
          mapper.get :published
          mapper.get :deleted
          mapper.get :spam

          mapper.get :my_draft
          mapper.get :my_published
          mapper.get :my_deleted
          mapper.get :my_spam

          mapper.get :total_draft
          mapper.get :total_published
          mapper.get :total_deleted
          mapper.get :total_spam
        end

        mapper.member do
          mapper.post   :to_spam
          mapper.post   :to_draft
          mapper.post   :to_published
          mapper.delete :to_deleted
        end
      end
    end
  end
end

