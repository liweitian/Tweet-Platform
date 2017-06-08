This is simple network social platform. You can publish your tweets, follow others and change your profile.

For users:
1.http://localhost:3000 is root page. At this root page you can see the recent news. This is a static page.
2.First please signUp. And then signIn.
3.Now you are in "My space". Where you can see all the tweets of yours and people you follow.
    Current you can see nothing.
4. Go to Following select one user and click follow. Now you are in "My space" and you can see tweets.
    Try to commit on others' tweets or publish your own tweets.
5. In My Tweets, you can see all tweets you have published so far. And all tweets here is displayed with 3 tweets per page. 
6. In "My Tweets", you can delete your published tweets.

7. In Profile, you can change your account's name, your password, you name and the introduction of yourself. Select a photo you like.
8. The Self-Introduction and the number of people that follow you will be displayed on the left.

For  Administrator,
1.please go to http://localhost:3000/admin/signin first.
2.Currently, the account and password are both "admin". We only allow one administrator now. Here you can see all the users and their states.
3.And you can see all tweets here. You can search for tweets using a key word. What I do here is split the content of each tweets. If that tweets contains this key word. Then this is one result.
4. You can delete one tweet using its id.(First column of the second table, under "Tweet" tag)
5. Let's do a search. Input text1 for example.
6. Then you can see all matched tweets. And a pie chart indicates the kind of tweets you search and other tweets.
7. click back to return.

Have fun.
