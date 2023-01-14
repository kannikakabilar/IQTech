# IQTech
IQTech is a web app that allows users to post short insights on software and technology and share their knowledge with other users. The app is built using ASP.NET core in C# and it implements the Model-View-Controller (MVC) design pattern and stores user and their posts info as records in SQL server database.
<br /><br />
I designed IQTech to provide a medium where general knowledge on computer science can be shared and learned among software engineers. Sometimes we don't know what we don't know. The IQTech web application allows users to share tips and tricks that would help developers improve their knowledge and their quality of work when working on bigger projects. It is my contention that learning smaller details allows us to exhibit perfection and achive greater accomplishments.

![Quote](https://github.com/kannikakabilar/IQTech/blob/main/screenshots/Screen%20Shot%202023-01-12%20at%2010.27.51%20PM.png)
![Quote](https://github.com/kannikakabilar/IQTech/blob/main/screenshots/Screen%20Shot%202023-01-12%20at%2010.28.04%20PM.png)
<br />

# Features
Users can create an account and login. Each user information is stored in the Accounts database table. This inforamtion is used to validate each time a user logs into their account. While registering, users will be required to create a strong password and their email will be validated by sending them a confirmation link. Users must be logged in to create, view, edit, and delete their IQTech posts. 

![Quote](https://github.com/kannikakabilar/IQTech/blob/main/screenshots/Screen%20Shot%202023-01-12%20at%2010.29.23%20PM.png)
![Quote](https://github.com/kannikakabilar/IQTech/blob/main/screenshots/Screen%20Shot%202023-01-12%20at%2010.29.30%20PM.png)
<br /><br />

Users can edit their profile, change their email, password, personal data, and add an authentication factor. The Accounts database table will be accessed from controller to models to SQL server. An update query will be executed to confirm the users profile modification.

![Quote](https://github.com/kannikakabilar/IQTech/blob/main/screenshots/Screen%20Shot%202023-01-12%20at%2010.30.33%20PM.png)
<br /><br />

Logged in users can view, edit, and delete their IQTech posts as well as view other users' IQTech posts that are trending. Each IQTech post consists of a short IQ question and an IQ answer relating to Computer Science. Each IQTech post is stored in a IQTechPosts database table where each record contains IQquestion, IQanswer, the owner (the user who created the IQTech post), and the number of times the post has been viewed/clicked. The model communicaates with the database to access and update these records and it will be sent to the controller and then to views to be displayed in the webpage.

![Quote](https://github.com/kannikakabilar/IQTech/blob/main/screenshots/Screen%20Shot%202023-01-12%20at%2010.28.33%20PM.png)
![Quote](https://github.com/kannikakabilar/IQTech/blob/main/screenshots/Screen%20Shot%202023-01-14%20at%204.53.14%20PM.png)
![Quote](https://github.com/kannikakabilar/IQTech/blob/main/screenshots/Screen%20Shot%202023-01-12%20at%2010.35.03%20PM.png)
![Quote](https://github.com/kannikakabilar/IQTech/blob/main/screenshots/Screen%20Shot%202023-01-14%20at%204.28.26%20PM.png)
![Quote](https://github.com/kannikakabilar/IQTech/blob/main/screenshots/Screen%20Shot%202023-01-14%20at%204.28.43%20PM.png)
<br /><br />

Users can also search using key words to find IQTech posts relating to the topic of their interest. An SQL query is used to filter through the IQTech post and will return the list of IQTech posts that contain the searched keyword.
![Quote](https://github.com/kannikakabilar/IQTech/blob/main/screenshots/Screen%20Shot%202023-01-12%20at%2010.28.56%20PM.png)
![Quote](https://github.com/kannikakabilar/IQTech/blob/main/screenshots/Screen%20Shot%202023-01-12%20at%2010.29.06%20PM.png)
<br /><br />

# How to run
- Download and install .NET SDK (https://dotnet.microsoft.com/download) <br />
(*Note: this project was coded using Visual Studio -not Visual Studio Code)
```md
> dotnet --version
```
- Open terminal and navigate to where the project is cloned/downloaded
```md
> cd IQTech/IQTech
> dotnet run
```
In mac only, if apple doubts of malicious software execute following:
```md
> xattr -d com.apple.quarantine ~/Downloads/IQTech
```
System Preference> Security&Privacy> Click Allow button under allowed apps downloaded => then run again and click open in the pop-up
<br /><br />
The terminal will provide a local host link (ie: http://localhost:5237/), copy and paste it in your browser and enjoy exploring IQTech web app.
<br /><br />

# Concepts Learned
This web app was developed with guidance from Shad Sluiter, a professor from Grand Canyon University in 
Phoenix, Arizona: https://www.youtube.com/watch?v=BfEjDD8mWYg
<br /><br />
Following are the concepts that I've learned while working on this project:
- Use the MVC (Model View Controller) design pattern.
- Configure database tables using the Entity framework.
- Setup of classes as models. Customize Razor forms.
- Create methods inside a controller.
- Style an ASP.NET page with CSS.
- Use Bootstrap classes.
- Create a search function to filter database results.
