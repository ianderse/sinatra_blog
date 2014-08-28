$LOAD_PATH.unshift 'lib'

require 'blog'

if ENV['URL'] and ENV['DATABASE_URL']
	# we're on heroku, no cache needed
	# also, it's a read-only file system
	GithubHook.disable :autopull
end

run Blog
