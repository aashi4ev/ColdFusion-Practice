<cfparam name="$currentage" type="numeric">
<cfparam name="$retirement" type="numeric">

<cfset currage = LSParseNumber($currentage) />
<cfset retire = LSParseNumber($retirement) />

<cfoutput>
What is your current age? #currage#
At what age would you like to retire? #retire#
You have #retire - currage# years left until you can retire.
It's #year(now())#, so you can retire in #year(now())+retire-currage#.
</cfoutput>
