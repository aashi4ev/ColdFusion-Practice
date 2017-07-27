<cfsetting EnableCFOutputOnly="true">

<cfparam name="$level" type="numeric" default="1">
<cfparam name="$guess" type="numeric">

<cfif #$level# EQ 1>
	<cfset range = "1-10"/>
	<cfset num = #RandRange(1, 10)# />
<cfelseif #$level# EQ 2>
	<cfset range = "1-100" />
	<cfset num = #RandRange(1, 100)# />
<cfelse>
	<cfset range = "1-1000" />
	<cfset num = #RandRange(1, 1000)# />
</cfif>

<cfset maybe = #$guess# EQ #num# ? "You got it!" : #$guess# LT #num# ? "Too low..." : "Too High" />

<cfoutput>Let's play Guess the Number!
Pick a difficulty level (1, 2, or 3): #$level#
The range is #range#.
I have my number. What's your guess? #$guess#
#maybe#
My number is #num#.
</cfoutput>
