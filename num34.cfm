<cfsetting EnableCFOutputOnly="true">

<cfparam name="$employees" type="string">
<cfparam name="$employee" type="String">

<cfoutput>
There are #listLen($employees)# employees.
</cfoutput>

<cfloop list="#$employees#" index="employee" from="1" to="#listLen($employees)#">
	<cfoutput>#employee#
</cfoutput>
</cfloop>

<cfoutput>
Enter an employee name to remove: #$employee#
</cfoutput>

<cfset employees = listDeleteAt($employees, ListFind($employees, $employee)) />

<cfloop list="#employees#" index="e" from="1" to="#listLen(employees)#">
	<cfoutput>#e#
</cfoutput>
</cfloop>
