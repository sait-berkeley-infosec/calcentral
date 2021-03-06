module Canvas
  class PublicAuthorizer
    extend Cache::Cacheable

    def initialize(canvas_user_id)
      @canvas_user_id = canvas_user_id
    end

    def can_create_course_site?
      self.class.fetch_from_cache @canvas_user_id do
        authorization = false
        campus_uid = Canvas::UserProfile.new(:canvas_user_id => @canvas_user_id).login_id
        if campus_uid
          user = User::Auth.get(campus_uid.to_s)
          policy = User::AuthPolicy.new(user,user)
          authorization = policy.can_create_canvas_course_site?
        end
        authorization
      end
    end

  end
end
