<cfsetting EnableCFOutputOnly="true">

<cfset dev=5 />
<cfparam name="$minLen" type="numeric">
<cfparam name="$chars" type="numeric">
<cfparam name="$nums" type="numeric">
<cfset deviation = #$minLen+5# />

<cfset length = RandRange(#$minLen#, #deviation#) />
<cfset numcount = 0 />
<cfset charcount=0 />
<cfset pass = "" />

<cfloop index="p" from="1" to="#length#">
	<cfif #numcount# NEQ #$nums#>
		<cfset pass = ListAppend(pass, RandRange(1,9)) />
	</cfif>
	<cfif #charcount# NEQ #$chars#>
		<cfset pass = ListAppend(pass, Randomize(!@#$%^&*()_+-={}[];':",./<>?`~))/>
	</cfif>
	<cfif #ListLen(pass)# LT #length#>
		<cfset pass = ListAppend(pass, Randomize(alpha) />
	</cfif>
</cfloop>


<cfoutput>
What's the minimum length? #$minLen#
How many special characters? #$chars#
How many numbers? #$nums#
Your password is #password#.
</cfoutput>
