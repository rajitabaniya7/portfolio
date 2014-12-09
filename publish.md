#Publishing to Heroku

Here are the steps to publish to Heroku. This assumes you made it through installing the heroku toolbelt and the "heroku create" command

1) Create a file in your main portfolio folder named Gemfile (remember capitalization matters). The Gemfile should have two lines, plus lines for any gems you have installed (like twitter, instagram, google search, etc.):

source 'https://rubygems.org'
gem 'sinatra'

gem 'twitter'
gem 'instagram'

2) On the command line, run ‘'undle install'. (FYI, the Gemfile tells heroku that you want a Sinatra app and what other gems you want installed. bundle install makes sure that you have the gems installed and creates a Gemfile.lock file that heroku will look for when it starts your application.)

3) Create a new file in your main portfolio folder named config.ru . It only has two lines (this assumes you put your routes in main.rb):

require './main'
run Sinatra::Application

4) On the command line, type 'git add -A' to add any new files.

5) In GitHub application, commit and sync.

6) On the command line, type 'git push heroku master'.

(You should repeat steps 4-6 anytime you make changes that you want to publish.)

After the end of all that, about half-a-dozen lines from the bottom, you will see URL for your site. You can see it live on the Interwebs by posting that into your browser. (You can also find this, at least the part before '.herokuapp.com', in your profile at Heroku.com.)


When you really want to use this to job hunt, you should get a custom domain (yourname.com or something). I’ll help you whenever you want for that. I recommend buying the name at namecheap.com. Instructions for setting up Heroku with the name are here: https://devcenter.heroku.com/articles/custom-domains.

-Tim
