# LookingForGroup

#### A Ruby on Rails application, 12.21.2017

![image](image link here)

#### By Kristen Marie Kulha

## Description

Web application where users can create account in order to create and join groups to connect with other table top gamers in their area to game with.

##User Stories

* User can create an account.
* User can add post to site that contains the game to be played, location(city), number of     needed players, and suggested location to meet to game (they are the group leader).
* Group leader can edit/delete their own posts.
* User can add themselves to list of players for specific group.
* User can search by their locations to find posts specific to their area
* User cans search only for groups that are not full.
* Admins can delete inappropriate posts.


## Setup/Installation Requirements
* Clone this repository
* In terminal, navigate to this projects root directory (looking_for_group)
* In terminal (while still in root directory), enter the following commands:
  * ``` $ bundle install ```
  * ``` $ rails db:setup ```
  * ``` $ rails db:test:prepare ```
  * ``` $ rails serve ```
* Then navigate to http://localhost:3000/ in web browser of choice.
* To create account, click on Sign Up in the navigation bar the the top of the screen.
* In order to make give an account admin privileges:
  * Make sure you are in the root directory (looking_for_group)
  * Enter ```rails c```
  * Enter ```User.find_by(email: "[users email address]").update(admin: true)```



## 🐛Known Bugs🐛

* Users can send more than one join request at a time.

## Updates

#### 03.15.2018

* Added user profile pages and avatars

## Future functionality

* Add AJAX to group admin interface
* Pagination
* Group message boards (available to members only)
* General discussion message boards(available to all users with an account)
* User mail boxes
  * Send/Receive messages
  * Group admin receives message when new pending members
  * Users receive message when their membership has been approved by group admin
* Instant messaging among users
* Styling, styling, styling
* User can view upcoming meet ups on a calendar
* User profile includes a calendar for their specific groups
* User can view meet up location on map
* User rating system (so if user didn't show to group without notice, was abusive, etc.) they will have low rating.


## 📧Support and contact details📧

Feel free to contact me at kristen.m.kulha@gmail.com

## Technologies Used

_Ruby on Rails, RSpec, Capybara, FactoryBot, Devise, Bootstrap_

### License

This software is licensed under the MIT license.
Copyright (c) 2017 **_Kristen Marie Kulha_**
