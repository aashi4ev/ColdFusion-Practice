<cfsetting EnableCFOutputOnly="true">
<cfparam name="$nums" type="string"/>
<cfset total = 0 />

<cfloop list="#$nums#" index="number">
	<cfoutput>
Enter a number: #number# </cfoutput>	
	<cfset total += #number# />
</cfloop>

<cfoutput>
The total is #total#. </cfoutput>
