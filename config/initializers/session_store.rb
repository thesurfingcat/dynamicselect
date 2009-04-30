# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dynamicselect_session',
  :secret      => 'd5d5f8cd577f03229ec31ea15c46d5777074f03755d9239bd8e0d95746cbac8b9bf58730cb5cb9f8d04ceb55e89f0bb830fc3a323b0279cadfdecf9e2ec03c30'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
