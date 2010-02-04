# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_democracy_session',
  :secret      => 'dc4b8079676b21375431f79c3ad3412dbad463b6e21bf23475f4c354c323fb3b929bdc6aafff3b5c7216d46a603d4adccf492cd88296bad0834f6eb9e8eb8df2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
