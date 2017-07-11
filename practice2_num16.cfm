<cfsetting EnableCFOutputOnly="true">
<cfparam name="$age" type="numeric" default=-1>

<cfset output = ( #$age# GTE 0 ? "What is your age? #$age#" : "Enter a valid age." ) />

<cfif #$age# GTE 0>
	<cfset maybe = (#$age# GTE 16 ? "You are old enough to legally drive." : "You are not old enough to legally drive.") />
	<cfelse>
	<cfset maybe=""/>
</cfif>

<cfoutput>
#output#
#maybe#
</cfoutput>
