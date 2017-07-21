<cfsetting EnableCFOutputOnly="true">
<cfparam name="$password" type="string">

<cffunction name="passwordValidator" returnType="string">
	<cfargument name="$password" type="string">

	<cfset points=0/>

	<cfif Len($password) GT 8>
		<cfset points+=1/>
	</cfif>

	<cfif refind("[A-z]", $password)>
		<cfset points+=1/>
	</cfif>
	
	<cfif refind("[[:punct:]]", $password)>
		<cfset points+=1 />
	</cfif>
	
	<cfif refind("[0-9]", $password)>
		<cfset points+=1/>
	</cfif>

	<cfreturn #points#>

</cffunction>

<cfset maybe = (passwordValidator($password) EQ 4 ? "very strong" : passwordValidator($password) EQ 3 ? "strong" : passwordValidator($password) EQ 2 ? "weak" : "very weak") />

<cfoutput>The password #$password# is a #maybe# password.
</cfoutput>
