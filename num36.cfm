<cfsetting EnableCFOutputOnly="true">
<cfparam name="$numbers" type="string">

<cfset total=0 />
<cfset nums="" />

<cfloop list="#$numbers#" index="num" >
	
	<cfoutput>Enter a number: #num#
</cfoutput>

	<cfset nums = ListAppend(nums, " #num#") />

	<cfset total += #num# />

	<cfif ListFind($numbers, num) EQ "1">
		<cfset min=#num#/>
	<cfelse>
		<cfif #num# LT #min#>
			<cfset min=#num#/>
		</cfif>
	</cfif>

	<cfif ListFind($numbers, num) EQ "1">
                <cfset max=#num#/>
        <cfelse>
                <cfif #num# GT #max#>
                        <cfset max=#num#/>
        	</cfif>
	</cfif>

</cfloop>

<cfset mean = #total/ListLen($numbers)# />
<cfset SDsum=0 />

<cfloop list="#$numbers#" index="n">
	<cfset part = #(Abs(n-mean))^2# />
	<cfset SDsum += #part# />
</cfloop>

<cfset SD = #(SDsum/ListLen($numbers))^0.5# />

<cfoutput>
Numbers:#nums#
The average is #total/ListLen($numbers)#.
The minimum is #min#.
The maximum is #max#.
The standard deviation is #SD#.
</cfoutput>
