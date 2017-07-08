<cfparam name="$password" type="string" default="">

<cfif Compare($password, "123&abc") EQ "0">
<cfset maybe="Welcome!"/>
<cfelse>
<cfset maybe="I don't know you.">
</cfif>

<cfoutput>
What is the password? #$password#
#maybe#
</cfoutput>
