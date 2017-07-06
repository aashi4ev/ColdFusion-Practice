<cfparam name="$named" type="string" default="">
<cfset named=$named/>

<cfscript>
length = Len(#named#)
</cfscript>

<cfoutput>
What is the input string? #named#
#named# has #length# characters
</cfoutput>
