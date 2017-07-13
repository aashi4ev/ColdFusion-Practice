<cfsetting EnableCFOutputOnly="true">
<cfparam name="$ans1" type="regex" pattern="y|n|Y|N|t" default="t">
<cfparam name="$ans2" type="regex" pattern="y|n|Y|N|t" default="t">
<cfparam name="$ans5" type="regex" pattern="y|n|Y|N|t" default="t">
<cfparam name="$ans7" type="regex" pattern="y|n|Y|N|t" default="t">
<cfparam name="$ans9" type="regex" pattern="y|Y" default="y">
<cfparam name="$ans10" type="regex" pattern="y|n|Y|N|t" default="t">

<cfset q1 = "Is the car silent when you turn the key? #$ans1#"/>
<cfset q2 = "Are the battery terminals corroded? #$ans2#" />
<cfset q3 = "Clean terminals and try starting again." />
<cfset q4 = "Replace cables and try again." />
<cfset q5 = "Does the car make a clicking noise? #$ans5#" />
<cfset q6 = "Replace the battery." /> 
<cfset q7 = "Does the car crank up but fail to start? #$ans7#" />
<cfset q8 = "Check spark plug connections." />
<cfset q9 = "Does the engine start and then die? #$ans9#" />
<cfset q10 = "Does your car have fuel injection? #$ans10#" />
<cfset q11 = "Check to ensure the choke is opening and closing." />
<cfset q12 = "Get it in for service" />

<cfoutput>#q1# </cfoutput>

<cfif #$ans1# EQ "Y">
	<cfoutput>#q2# </cfoutput>
	<cfif #$ans2# EQ "y">
		<cfoutput>
#q3# </cfoutput>
	<cfelseif #$ans2# EQ "N">
		<cfoutput>
#q4# </cfoutput>
	</cfif>
<cfelseif #$ans1# EQ "n">
	<cfoutput>
#q5# </cfoutput>
	<cfif #$ans5# EQ "y">
		<cfoutput>
#q6# </cfoutput>
	<cfelseif #$ans5# EQ "n">
		<cfoutput>
#q7# </cfoutput>
		<cfif #$ans7# EQ "y">
			<cfoutput>
#q8# </cfoutput>
		<cfelseif #$ans7# EQ "n">
			<cfoutput>
#q9#</cfoutput>
			<cfif #$ans10# NEQ "t">
				<cfoutput> 
#q10# </cfoutput>
			</cfif>
			<cfif #$ans10# EQ "n">
				<cfoutput>
#q11# </cfoutput>
			<cfelseif #$ans10# EQ "y">
				<cfoutput>
#q12# </cfoutput>
			</cfif>
		</cfif>
	</cfif>
</cfif>
