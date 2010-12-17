# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_IshaanTech_Portal_session',
  :secret      => 'b92311491777db557a586ad2d541f9efbb31848c18dc8078320ca1622a196adc48aa187bd4eb497a996bad5a23e997062b1421b597c12dbf24ff893d0ec3cd8b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
