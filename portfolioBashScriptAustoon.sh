#!/usr/bin/env bash
#Fun portfilio bash script

#Here is some infomration about me presented in a bash script!

#About me variables
firstName='Austin'
lastName='Abro'
school1='University of Michigan - Dearborn'
school2='Macomb Community College'
major='Software Engineering'
email='austinabro@outlook.com'
githubUrl='https://github.com/AustinAbro1'
linkedIn='https://www.linkedin.com/in/austin-abro-ab6851215/'
languages='C++, C#, Java, JavaScript, Python, SQL, TypeScript, Flutter with Dart'
softwareTools='Software Tools: Git, HTML, JavaFX, Linux, Microsoft Suite, Postman, Python Django'
ide='Android Studio, Apache NetBeans, IntelliJ, Visual Studio'
gradDate='August 2025'
experience='      
      ● Configured professional development environment by setting up GitHub with SSO and installing essential tools like MySQL, IntelliJ, and Visual Studio to support local project development.
      ● Set up and ran multiple enterprise scale codebases locally including MobileOperator and 365Pay using React Native and TypeScript.
      ● Gained hands-on experience with GitFlow branching strategy and submitted over five pull requests where I received feedback from code reviewers.
      ● Submitted and created over seven Jira cards, found and corrected tens of code smells I found throughout the applications and documented changes along with providing simple testing steps for Quality Assurance.
      ● Collaborated with teammates to analyze and diagram the internal code flow of the MobileOperator app and participated in mob programming sessions with them to understand the application.
      ● Presented the architecture design of the MobileOperator app to senior engineers along with code smell findings from both the MobileOperator and 365Pay App.
      ● Took initiative to reach out and shadow senior developers in different departments from API to Mobile Application development, and Kiosk development.
      ● Participated in HR onboarding, safety training, and mentor meetings to foster collaboration and professional growth.'

myStory='I was the team manager of my high school football team and I found that analyzing film was something I was really good at. I later
        in my time in college worked at a Expensive Banquet Hall to help with paying for school and from there I learned how to pay much attention to detail.
        The skills I have gained from high end banquet service and coaching has helped me translate well into Software Engineering with pattern recognition, teamwork, and 
        attention to detail skills.'

yes='yes'
no='no'

echo "Hello Everyone, Welcome to my portfolio bash script!"

echo "Would you like to know about me?: (Enter yes or no)"
read response

declare -a aboutMeArray=(
    "My name is $firstName $lastName and I will finish my schooling at $school1 as a major in $major in $gradDate."
    "I started my schooling at my local community college $school2."
    "My email is $email."
    "You can view my projects here $githubUrl."
    "This is my LinkedIn profile url $linkedIn."
    "I know many programming languages such as $languages."
    "I have used many software tools like $softwareTools."
    "IDEs I have worked with include $ide."
)

if [[ $response = 'yes' ]]; then
    for i in "${!aboutMeArray[@]}"; do
        echo "$((i+1)). ${aboutMeArray[$i]}"
    done

fi

echo
echo "Would you like to hear about my work experience?: (Enter yes or no)"
read response1

if [[ $response1 = 'yes' ]]; then
    echo
    echo "$experience"
fi

echo
echo "Would you like to hear more about my story?: (Enter yes or no)"
read response2

if [[ $response2 = 'yes' ]]; then
    echo
    echo "$myStory"
else
    echo
    echo "Thanks for checking this out!"
fi