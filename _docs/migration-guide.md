ProjectForge development documentation
=======================================
Micromata GmbH, Version {version}


== Migration guide

Most migrations (data base as well as data base content) will be done automatically during the start-up phase of an newer version.

But there are some really small changes e. g. in config files etc. which have to be done manually, as described below.

====

====

=== Version 6.x to version 7

. Configurationparameters changed
.. `config.xml:holiday.month` is now 1-based (1 - January, ..., 12 - December), was 0-based.
.. `projectforge.properties:projectforge.defaultFirstDayOfWeek=MONDAY` (full name of weekday: SUNDAY, ...)

. Configuration parameters moved from `config.xml` to `projectforge.properties`
.. `config.xml:currencySymbol` -> `projectforge.properties:projectforge.currencySymbol=€`
.. `config.xml:defaultLocale` -> `projectforge.properties:projectforge.defaultLocale=en`
.. `config.xml:defaultTimeNotation` -> `projectforge.properties:projectforge.defaultTimeNotation=H24`
.. `config.xml:firstDayOfWeek` -> `projectforge.properties:projectforge.defaultFirstDayOfWeek=MONDAY`
.. `config.xml:excelPaperSize` -> `projectforge.properties:projectforge.excelPaperSize=DINA4`

. PhoneLookupServlet moved from `phoneLookup` to `rsPublic/phoneLookup`
