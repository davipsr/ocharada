# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ocharada_session',
  :secret      => 'fc28fba7732bc62e73f5db9b09f3d1624390e5044f668275428f864c1bc4dd81bcc60d4be9b3d20bb98a8c89e4ff0b8f936b5b0e2ff1abeec5ac2fd4a1239a60'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
