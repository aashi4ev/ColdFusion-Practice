<cfsetting EnableCFOutputOnly="true">
<cfparam name="$first" type="string" default="">
<cfparam name="$last" type="string" default="">
<cfparam name="$zip" type="numeric">
<cfparam name="$ID" type="string" default="">

<cffunction name="validateInput">
        <cfsetting EnableCFOutputOnly="true">
        <cfargument name="$first">
        <cfargument name="$last">
        <cfargument name="$ID">
        <cfargument name="$zip">
        <cfset maybeFirst = #validateFirst($first)#/>
	<cfset maybeLast = #validateLast($last)#/>
	<cfset maybeZip = #validateZip($zip)#/>
	<cfset maybeID = #validateID($ID)#/>
	<cfif Len(maybeFirst) EQ 0 AND Len(maybeLast) EQ 0 AND Len(maybeID) EQ 0 AND Len(maybeZip) EQ 0 >
		<cfset maybe = "There were no errors found"/>
	<cfelse>
		<cfset maybe = "#maybeFirst# #maybeLast# #maybeZip# #maybeID#" />
	</cfif>
	<cfoutput>Enter the first name: #$first#
Enter the last name: #$last#
Enter the ZIP code: #$zip#
Enter an employee ID: #$ID#
#maybe# </cfoutput>
</cffunction>

<cffunction name="validateFirst" returnType="string">
	<cfargument name="$first">
	<cfreturn (Len($first) EQ 0 ? "The first name must be filled in." : Len($first) LT 2 ? ""#$first#" is not a valid first name." : "" )>
</cffunction>

<cffunction name="validateLast">
	<cfargument name="$last">
	<cfreturn (Len($last) EQ 0 ? "The last name must be filled in." : Len($last) LT 2 ? ""#$last#" is not a valid last name." : "" )>
</cffunction>

<cffunction name="validateZip">
	<cfargument name="$zip">
	<cfif refind([a-z], "$zip")>
		<cfreturn "The ZIP code must be numeric.">
	</cfif>
</cffunction>

<cffunction name="validateID">
	<cfargument name="$ID">
	<cfif Len($ID) NEQ 7>
		<cfreturn "#$ID# is not a valid ID.">
</cffunction>

<cfset try = #validateInput(Aashi, Wad, 08807, aa-1232)#/>
