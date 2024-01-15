# Course Registration
This is my submission for IRIS Web team Recruitments 2024. Most of the features are included in this project.

# Introduction
This project is a course registration module. Firstly, a user signs up in the application and when the user logs in he/she will be directed to a page saying that you aren't verified. So, the flow is that first a user registers in the application and after that the admin will give roles to the user and the user will then be directed to corresponding dashboards upon login. There are three roles namely: Admin, Student, Teacher.

# Technologies used
I used ruby on rails as the MVC framework and used tailwindcss for styling and used the inbuilt sqlite db just for simplicity. This is the first time I'm using ruby on rails. Initially, I was baffled by the complexity of folders, but after experimenting with it, I was able to understand it well and also I was able to understand MVC architecture in a better way since I feel ruby on rails enforces MVC architecture more than any other framework. 

# Installation
You first need to have ruby installed in your computer in order to use ruby on rails. You can install ruby by following the instructions from this [site](https://www.ruby-lang.org/en/documentation/installation/).
After installing ruby, we have to install ruby on rails. This [site](https://guides.rubyonrails.org/v5.0/getting_started.html) can help with that. Also, I used rvm to manage and install different ruby versions.

# Setup
Clone the repository in your computer by typing the following command:

`git clone https://github.com/suchit07-git/IRIS_Rec23_211ME155_Ruby_on_Rails.git`
Run bundle install to install the necessary gems.
After installing the gems, run `rails s` to start a server at port 3000 or `rails s -p PORT_NUMBER` to start a server at the specified port number.

# Features available:
## Admin
- Admin can see the list of registered users.
- Admin can assign roles to the users.
- Admin can access the dashboards of student and user

## Student
- A Student can create a profile and edit it if required.
- A student can see the courses offered by his/her department and register for them.
- 
## Faculty
- A faculty can create a profile and edit it if required.
- A faculty can create courses for the students and can control the number of registrations for a course.

# Login credentials:
## Admin
### Email: My email id
### Password: hellorails

# Features planned but haven't implemented yet:
- Adding authorization using cancancan: I tried using it but I faced errors and I was lacking time so I decided that I will implement it later.
- Improving admin dashboard and admin features: I used the admin dashboard only for assigning roles but I wanted to implement other featues. Also, I have planned to give admin more control over faculty and students
- Improving overall UI
# Demo video
[Click here](https://drive.google.com/file/d/1aBrA_m1eWyMS31rH3g_Nuyu2WUPS7Rn4/view?usp=drive_link)
