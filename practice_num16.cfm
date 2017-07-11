<cfsetting EnableCFOutputOnly = "true">
<cfparam name="$age" type="numeric" default=-1 >

<cfif #$age# EQ -1>
	<cfset output="Enter your age."/>
	<cfelse>
	<cfset output= "What is your age? #$age#" />
</cfif>

<cfset maybe = ""/>

<cfif (#$age# GTE 0)>
	<cfif (#$age# LT 16)>
		<cfset maybe = "
You are not old enough to legally drive."/>
		<cfelseif #$age# GTE 16>
		<cfset maybe = "
You are old enough to legally drive." />
	</cfif>
	<cfelse>
	<cfset maybe="
Enter a valid age."/>
</cfif> 

<cfoutput>
#output# #maybe#
</cfoutput>
