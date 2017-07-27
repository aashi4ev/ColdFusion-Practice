<cfsetting EnableCFOutputOnly="true">

<cfloop index="n" from="0" to="12">
	<cfoutput>
</cfoutput>
	<cfloop index="m" from="0" to="12">
		<cfoutput> #m#*#n#=#m*n#</cfoutput>
	</cfloop>
</cfloop>
