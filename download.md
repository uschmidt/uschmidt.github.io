---
layout: page
width: xsmall
title: Download
permalink: /download/
---

## Community Edition

This community edition is full-featured and for free, there are no limitations! 

An auto-update mechanism for the data-base on start-up of the web app is included for all previous public versions: Convenientupdates.

<table>
<tbody>
<tr>
  <th class="gwikith">Type</th>
  <th class="gwikith">Link</th>
  <th class="gwikith">Size</th>
  <th class="gwikith">Description</th>
</tr>
<tr>
<td class="gwikitd">Windows / MacOS X / Other</td>
<td class="gwikitd"><a href="https://sourceforge.net/projects/pforge/files/ProjectForge/" target="_blank">ProjectForge-application-X.X.X.jar</a></td>
<td class="gwikitd">130MB</td>
<td class="gwikitd">Executable java archive</td>
</tr>
<tr>
<td class="gwikitd">Docker hub</td>
<td class="gwikitd"><a href="https://hub.docker.com/repository/docker/kreinhard/projectforge" target="_blank">Docker images</a></td>
<td class="gwikitd">530MB</td>
<td class="gwikitd">Docker images for running as single container as well as docker compose stack.</td>
</tr>
<tr>
<td class="gwikitd">Sources</td>
<td class="gwikitd"><a href="https://github.com/micromata/projectforge" target="_blank">Sources on Github</a></td>
<td class="gwikitd">-</td>
<td class="gwikitd">All sources for own development.</td>
</tr>
<tr>
</tr></tbody>
</table>


### Source code at GitHub

You can also check out the source code from GitHub:
https://github.com/micromata/projectforge
 
## Convenient updates - Updates through simple clicks

ProjectForge provides a very convenient method for updating your ProjectForge installation. Since version 6 any required updates or migrations will be done automatically by simply starting a new version.

Some versions need manual updates (e. g. of config files): [Migration](https://github.com/micromata/projectforge/blob/develop/doc/migration.adoc).

If you need to update versions older 6, you'll need to download the latest version 5 and use the older update mechanism by simply clicking through the updates.


## Translation files

ProjectForge is 100% internationalized. Enable new languages by simply editing the translation file.

Currently ProjectForge is available in the languages English and German. For enabling a new language you only need to enter your translations in the translation text file. Please choose one of the existing language files which you will use as a template for your translations. Please leave the i18n key untouched and change the translation right to the '=' character.
This is the format of a translation file:

```
# <ProjectForge key>=<Translation>
address.addresses=Addresses
address.addressStatus=Address status
address.addressStatus.leaved=company leaved
address.addressStatus.outdated=out-dated
address.addressStatus.uptodate=up-to-date
...
menu.accessList=Access management
menu.addNewEntry=New entry
menu.addressList=Addresses
menu.administration=Administration
...
task.assignedUser=Assigned user
task.consumption=Consumption
task.deleted=deleted
```

The translations are grouped, it's possible to translate only parts of the file. If any entry is missing in the user's language the translation from the default language is used (English).
Use one of the following translation files as template:

- I18nResources.properties: The English (default) translation file.
- I18nResources_de.properties: The German translation file.

Put the translation file to the path: src/main/resources
Please send any translation file to k.reinhard at me.com, so it'll be part of the next distribution.
For any newer version of ProjectForge you'll get a list of new translations not yet available in your language (please refer the system administration menu).


