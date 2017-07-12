<cfsetting EnableCFOutputOnly="true">
<cfparam name="$month" type="range" min=1 max=12 default=0>

<cfswitch expression = #$month# >
	<cfcase value = 1>
		<cfset month = "January"/>
	</cfcase>

	<cfcase value = 2>
                <cfset month = "February"/>
        </cfcase>

	<cfcase value = 3>
                <cfset month = "March"/>
        </cfcase>

	<cfcase value = 4>
                <cfset month = "April"/>
        </cfcase>

	<cfcase value = 5>
                <cfset month = "May"/>
        </cfcase>

	<cfcase value = 6>
                <cfset month = "June"/>
        </cfcase>

	<cfcase value = 7>
                <cfset month = "July"/>
        </cfcase>

	<cfcase value = 8>
                <cfset month = "August"/>
        </cfcase>

	<cfcase value = 9>
                <cfset month = "September"/>
        </cfcase>

	<cfcase value = 10>
                <cfset month = "October"/>
        </cfcase>

	<cfcase value = 11>
                <cfset month = "November"/>
        </cfcase>

	<cfcase value = 12>
                <cfset month = "December"/>
        </cfcase>

</cfswitch>

<cfoutput>
Please enter the number of the month: #$month#
The name of the month is #month#.
</cfoutput>
