<cfsetting EnableCFOutputOnly="true">
<cfparam name="$age" type="numeric" default=-1>

<cfset output = ( #$age# GTE 0 ? "What is your age? #$age#" : "Enter a valid age." ) />

<cfset maybe = (#$age# GTE 16 ? "
You are old enough to legally drive." : #$age# GTE 0 ? "
You are not old enough to legally drive." : "" ) />

<cfoutput>
#output# #maybe#
</cfoutput>
