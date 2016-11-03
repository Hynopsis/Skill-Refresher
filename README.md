# Skill-Refresher*

Working site: http://www.rpetersen4.btcwsd.com/Refresher/quiz.php

This is a project I have been working on since I graduated.  To prepare for interviews, and to keep current on the terminology and methodologies for the various web programming languages, I have created this basic refresher utility.  So it will have the current languages listed across the top, which can be selected to load questions about that language.  It works much like flash cards, which works best for me when it comes to quickly reviewing a topic.  Once page load, it will pull all questions, answers, and hints from the database, then randomize them.  

So for use, simply click the remove checkbox if you know the answer and don't want to see the question anymore.  You can view the answer as well to double-check your skills.  You can browse through the questions by clicking the next question button.  Once you get to the end of the questions for the topic, it will re-randomize them and start over.  It doesn't include the items that you removed by clicking the checkbox before clicking next question.  So the goal is to remove all questions, at which point it will let you know that you have answered them all and need to refresh the page to regenerate the questions.

If you can think of any good questions, please visit the site and submit a message.  

*For security reasons this commit doesn't include my database login information, so it will not working without creating one.  I did export my current sql database if someone wanted it for some reason.  You will need to host the database info and update the login information on your custom login.php file.  You will probably need to change the directory.  If you use my databases, then you shouldn't need to edit any sql query requests, since table and column names will be the same. As I add more database content I will update it here.  I am currently finishing the php section which will have almost twice as many questions.  Next I will begin entering data about C# and ASP.Net. One I get the core question in the database, then I will add better features and sorting capabilities.  
