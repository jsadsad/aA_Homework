# aA_Homework

Here at App Academy we work with a Ruby on Rails, JavaScript, React, Redux, and PostgresSQL stack.

For our specific purposes we are using Ruby on Rails on the backend/server, PostgresSQL to house our database, and JavaScript + React + Redux for frontend rendering and logic.

# DS Store

1. What is a `.DS_Store` file?

A .DS_Store, short for Desktop Services Store, is an invisible file on the macOS operating system that gets automatically created anytime you look into a folder with ‘Finder.’ This file will then follow the folder everywhere it goes, including when archived, like in ‘ZIP.’

If you’re a developer or system administrator and still transferring files from your computer to your server or don’t take the necessary precautions with your automated deployment process, you could be putting these files on the server where your site or application lives unconsciously.

2. Why should you know about them?

This file stores custom attributes/metadata of its containing folder and the names of other files around it. Exposing this information could potentially allow hackers to act maliciously and let them see private files.

3. Remove it.

https://stackoverflow.com/questions/107701/how-can-i-remove-ds-store-files-from-a-git-repository
