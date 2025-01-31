# ByteCraft

# Description

This project includes both GUI automated tests and API tests, implemented using the Robot Framework. The WebTests folder contains the GUI test cases and associated resources. Within this folder, the Keywords directory holds custom keywords, which are essentially reusable sets of instructions that define actions to be performed during the tests. The Pages directory includes element locators for each page, and the Test Files directory contains the actual test cases, which may utilize variables for dynamic test execution.

The APITests folder contains the API test cases. Inside, the Keywords folder holds reusable keywords, similar to those in the GUI test section, representing sets of instructions to be followed when the keyword is invoked. The remaining subfolder includes the API test cases themselves.

# Steps to run the tests 

1- Clone the repo

2- Create virtual enviroment using command "python -m venv {envrioment name}"

3- Install the requirements file using command "pip install -r requirements.txt"

4- Check your chrome version, download a chrome driver compatible with it, then paste the chromedriver.exe into the Python\Scripts

5- To run GUI tests, Open a terminal on the IDE ,change the directory to "../WebTests/Resources/Tests" then Run the tests using command "robot Tests/google_tests.robot" or ""robot Tests/herouapp_tests.robot"

6- To run API tests, Open a terminal on the IDE ,change the directory to "../APITests/Tests" then Run the tests using command "robot Tests.robot"

7- Test reports and screenshots will be generated in the same tests folder after running each test


