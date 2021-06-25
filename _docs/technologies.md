---
title: Technologies
subtitle: Enthusiasm for technology as well as a passion for software development resulted in the emergence of a product based on state-of-the-art technologies, which will be improved continuously.
author: kai
tags: [technologies]
---

## Supported browsers

ProjectForge is mainly developed under FireFox and Apple Safari. Please refer the following table to see the status of browser interoperability of the current release:

| Browser      | Score | Description                                                                  |
|--------------|-------|------------------------------------------------------------------------------|
| Apple Safari |   ++  | Well tested, works fine.                                                     |
| Chrome       |   ++  | Well tested, works fine.                                                     |
| Firefox      |   ++  | Well tested, works fine.                                                     |
| Microsoft IE |   +   | Quickly tested, seems to work (since ProjectForge's migration to Bootstrap). |


## Professional architecture and CI (continuous integration)

ProjectForge is based on a modern and professional software architecture which is commonly used in theindustry. A professional roles and right management assures that every user can only see and use those data for which he has all the required rights and roles for.
The high quality and reliability of ProjectForge base, last but not least, on a lot of automatically test cases. The more than 250 test cases are running daily, there are part of a professional CI-system (continuous integration). 
A high value of data integrity and security is therefore assured.

## Rapid Application Development Approach (RAD)

ProjectForge is characterized by a rapid application development approach.

This means:

    - Write the entity as Java beans and define the data base mapping with annotations (JPA)
    - Write simple html pages (Wicket / React)
    - Write the business logic in Java/Kotlin (not in jsp or something comparable)
    - Derive ui classes (list and edit forms) from the base classes.
    - Derive data access objects from the base objects (security, access management, persistancy).

The mission:
Develop entities of new functionalities with lists and edit screens in just a few hours!

    - Secure access checking
    - Fully indexed (search)
    - History of every user's modifications
    - Full data base support
    - Support of object oriented html pages and components (powered by Wicket)!

An established developer should focus on the essentials!
