# Tuuitter - Blog v1.0

A new perspective twitter replica. Longer posts, shorter blogs. 
Deployed to:https://shrouded-tundra-39846.herokuapp.com/

## Description

Tuuitter-Blog-v1.0 is a social media/blog app with user authentication and secure passwords. 

All users are visible to others. As soon as a user profile created, tuuits can be created with a title, 100 chahracter limited tags, 1000 chahracter limited content. There are no confidential tuuits. All posts are publicly visible. Only the owners of tuuits can delete, edit posts. Also, users can change their profile information. If a user profile is deleted, all tuuits owned by that user will be deleted too. Admin can restrict users and tuuits. Search box is a simple search function for all titles, tags and users.

## How it works
As stack; app built with Ruby on Rails, SQlite, Bootstrap, puma, bcrypt. A secure admin feature allows the posts and users being deleted with a dashboard feature. 

## Getting Started

- Clone the repo. 
- In the directory:
```
bundle install

rails db:migrate
rails db:reset

yarn install
```
- To run the server:

```
rails s
```
- Visit `http://localhost:3000/` or `http://127.0.0.1:3000`

- Copy the .env-example file in the directory, and rename it to .env. Replace the info with your admin credentials.


## Dependencies

- Ruby @2.6.6
- Rails @6.1.3
- Bootstrap @5.0.1
- SQlite3 @1.4
- Bcrypt


# Screenshots

<p align="center">
<img src="https://raw.githubusercontent.com/alibas01/tuuitter_long/main/public/main.png" width="400" height="auto" />
</p>
<p align="center">
<img src="https://raw.githubusercontent.com/alibas01/tuuitter_long/main/public/register.png" width="400" height="auto" />
</p>
<p align="center">
<img src="https://raw.githubusercontent.com/alibas01/tuuitter_long/main/public/myprofile.png" width="400" height="auto" />
</p>
<p align="center">
<img src="https://raw.githubusercontent.com/alibas01/tuuitter_long/main/public/search_results.png" width="400" height="auto" />
</p>
<p align="center">
<img src="https://raw.githubusercontent.com/alibas01/tuuitter_long/main/public/allusers.png" width="400" height="auto" />
</p>
<p align="center">
<img src="https://raw.githubusercontent.com/alibas01/tuuitter_long/main/public/allposts.png" width="400" height="auto" />
</p>

For more snapshots visit public directory.
