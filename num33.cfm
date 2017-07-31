<cfsetting EnableCFOutputOnly="true">

<cfparam name="$question" type="String">

<cfset answer = "Yes!,No.,Maybe...,Ask again Later!" />

<cfoutput>
What's your question? #$question#
#listGetAt(answer, RandRange(1, ListLen(answer)))#
</cfoutput>
