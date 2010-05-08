# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_yegrb-faces_session',
  :secret      => '32ee1a2dd2630a96f1ea9e39c58f4dc51956056f46e92f32d6afd477e45a0ee6742383b43cefb36a8c9f3d729157f3b0e0324084c0ec9693916f67c8bbd50056'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
