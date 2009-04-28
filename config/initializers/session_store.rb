# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rude-blog_session',
  :secret      => '33e284af267f651a4ec7f96be250798ba61453d47df8d71a6d144379cc7c47a87963206017aa07d9b64dd6fc60d2c7520b3e95953a61478a71946ec457ad57ad'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
