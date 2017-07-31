<cfsetting EnableCFOutputOnly="true">

<cfparam name="$names" type="String">

<cfloop list="#$names#" index="name" from="1" to="ListLen($names)">
	<cfoutput>Enter a name: #name#
</cfoutput>
</cfloop>

<cfoutput>
The winner is... #listGetAt($names, RandRange(1, ListLen($names)))#!
</cfoutput>
