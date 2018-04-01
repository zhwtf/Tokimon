### Tokimon

## Introduction of Tokimon Webapp
This is a webapp for trainers to train Tokimons and compete with others.

### Background Story
A Tokimon is a lovely creature found in Korea like the famous game character Pokemon in Japan. Tokimons can have their own abilities such as fly, fight, throw fire, spray water, electrify, and freeze. In addition, these abilities are measured from 0 to 100. For each trainer, he/she can collect Tokimons and train them. This Webapp is to track the known Tokimons in existence and their owner(s).  

## For developers
This web app was written in Ruby on Rails framework. To start, fork/clone the repo and run the follow command in your local machine:

1.  `bundle install` - install bundle dependencies on local machine
2. `rake db:create` - create new database on local machine
3. `rails server` - run rails on local server

## Features of Tokimon Webapp
#### 1. The ability to add new Tokimon (Trainer) (with corresponding attributes). 
#### 2. The ability to change attributes of any of the Tokimons (Trainers). 
#### 3. The ability to delete any of the Tokimons (Trainers). 
#### 4. The ability to display information about a specific Tokimon (Trainer) including its Trainer (Tokimons in training). A link (Links) should be provided from the Tokimon (Trainer) info page that links to info about its Trainer (Tokimons). 
#### 5. The ability to display all Tokimons (Trainers) currently in the database (including any other information you collect). 

## Additional Features of Tokimon Webapp
### 1.Attribute
##### - All attributes have a validation to make sure that the user enters the correct input

### 2. Flash Messages
##### - A flash message will pop out when the action is completed successfully

### 3. Bar Chart
##### - A bar chart is added to show the trainer's level and all Tokimons' total abilities.

### 4. Use Faker
##### - Automatically generate 5 trainers with 2 Tokimons for each trainer(total 10 Tokimons).
##### - The Tokimons' names are all from Tokimon (also generated automatically)

### 5 Use Boostrap
##### - Generate the header and navigation bar using the Boostrap
