# Talented.io

Heroku url: [http://talentedio.herokuapp.com](http://talentedio.herokuapp.com/)
After you signin, you can go to http://talentedio.herokuapp.com/admin to have a look at the current admin system

### Install instructions

```
git clone git@github.com:huchenme/talented.git
cd talented
bundle install
rake db:create:all
rake db:migrate
rake db:seed
rails server
```

You need to have PostgresSQL installed on local machine

If you are using `homebrew`, you can execute the following command

```
brew install postgresql
```

### Current progress

[x] developer, employer signup
[x] developer, employer signin
[x] developer fields and validations
[x] employer fields and validations
[x] employer jobs create, view, edit, delete and validations
[] form styling
[] developer, employer profile page styling
[] job form styling
[] job show page
[] admin page customization
[] admin approval for developer and employer
[] admin authorization
[x] heroku development

__phase 2__:

[] link with Github
[] link with Linkedin
[] pull information from Github
[] pull information from Linkedin