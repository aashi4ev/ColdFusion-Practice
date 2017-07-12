<cfsetting EnableCFOutputOnly="true">
<cfparam name="$weight" type="numeric">
<cfparam name="$gender" type="regex" pattern="(?i)F|M">
<cfparam name="$drinks" type="numeric" default=0>
<cfparam name="$volume" type="numeric">
<cfparam name="$hours" type="numeric" default=0>

<cfset alcohol = #$drinks * $volume# />
<cfset ratio = ($gender EQ "F" ? 0.66 : 0.73) />

<cfset BAC = # (((alcohol*5.14)/$weight)*ratio)-0.015*$hours # />

<cfset maybe = (#BAC# LT 0.08 ? "
It is legal for you to drive." : "
It is not legal for you to drive." ) />

<cfoutput>
Your BAC is #BAC#. #maybe#
</cfoutput>
