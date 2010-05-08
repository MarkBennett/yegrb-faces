class User < ActiveRecord::Base
  acts_as_authentic
  is_gravtastic!

  def as_json(options=nil)
    {:gravatar => gravatar_url.split("?").first, :display_name=>display_name}
  end
end
