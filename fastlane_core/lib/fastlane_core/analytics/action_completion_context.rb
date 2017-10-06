module FastlaneCore
  class ActionCompletionStatus
    SUCCESS = 'success'
    FAILED = 'failed' # fastlane crashes unrelated to user_error!
    USER_ERROR = 'user_error' # Anytime a user_error! is triggered
  end

  class ActionCompletionContext
    attr_accessor :p_hash
    attr_accessor :action_name
    attr_accessor :status

    def initialize(p_hash: nil, action_name: nil, status: nil)
      @p_hash = p_hash
      @action_name = action_name
      @status = status
    end
  end
end