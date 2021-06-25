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

## Technological requirements for the ProjectForge server

Java 8 might work also with ProjectForge 7, but OpenJDK 11 is recommended (tested in several productive environments), PostgreSQL (optional), Linux, Mac OS X, Windows.

## Technologies



<table>
   <thead>
      <tr>
         <td>Technology</td>
         <td>Usage</td>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>Java/Kotlin</td>
         <td>Base technology</td>
      </tr>
      <tr>
         <td>Ajax</td>
         <td>Used for auto-completion of form input fields and flicker-less browsing. User-specific favorites supports the user for faster access.</td>
      </tr>
      <tr>
         <td>Hibernate / MGC</td>
         <td>Persisting framework O2R, R2O, JPA 2</td>
      </tr>
      <tr>
         <td>Spring</td>
         <td>Boot Application</td>
      </tr>
      <tr class="row_5 odd">
         <td class="col_0 col_first">Wicket / React</td>
         <td class="col_1 col_last">Web framework Wicket will be replaced by React.</td>
      </tr>
      <tr class="row_6 even">
         <td class="col_0 col_first">JCR</td>
         <td class="col_1 col_last">JackRabbit for document storage (used by data transfer tool and others)</td>
      </tr>
      <tr class="row_7 odd">
         <td class="col_0 col_first">FOP</td>
         <td class="col_1 col_last">For the creation of PDFs, e. g. the user time sheets, monthly employee reports etc.</td>
      </tr>
      <tr class="row_8 even">
         <td class="col_0 col_first">JUnit</td>
         <td class="col_1 col_last">Test framework</td>
      </tr>
      <tr class="row_9 odd">
         <td class="col_0 col_first">Jenkins</td>
         <td class="col_1 col_last">CI - continouos integration system</td>
      </tr>
      <tr class="row_10 even">
         <td class="col_0 col_first">Groovy/Kotlin Script</td>
         <td class="col_1 col_last">Used for scripting ProjectForge for reports (MS Excel exports, charting etc.) as well as for e-mail templating (see AdministrationGuide for further information).</td>
      </tr>
      <tr class="row_11 odd">
         <td class="col_0 col_first">Jasperreports</td>
         <td class="col_1 col_last">For generating reports.</td>
      </tr>
      <tr class="row_12 even">
         <td class="col_0 col_first">JFreeChart</td>
         <td class="col_1 col_last">For internal graphics and diagrams as well as for usage in the groovy scriptlets by the users, e. g. for reports.</td>
      </tr>
      <tr class="row_13 odd">
         <td class="col_0 col_first">Maven3</td>
         <td class="col_1 col_last">Building system, testing, staging and Jar-management.</td>
      </tr>
      <tr class="row_14 even">
         <td class="col_0 col_first">Powermock</td>
         <td class="col_1 col_last">For using mock objects in JUnit-tests</td>
      </tr>
      <tr class="row_15 odd">
         <td class="col_0 col_first">MPXJ</td>
         <td class="col_1 col_last">For exporting MS-Project plans: MPXJ home page</td>
      </tr>
      <tr class="row_16 even">
         <td class="col_0 col_first">POI</td>
         <td class="col_1 col_last">For the creation and manipulation of Excel files (also supported in the user scripts).</td>
      </tr>
      <tr class="row_17 row_last odd">
         <td class="col_0 col_first">SVG (batik)</td>
         <td class="col_1 col_last">For drawing Gantt diagrams</td>
      </tr>
   </tbody>
</table>
