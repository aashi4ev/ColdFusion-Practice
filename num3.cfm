<cfparam name="$quoted" type="string" default="">
<cfset quoted=$quoted/>
<cfparam name="$person" type="string" default="">
<cfset person=$person/>

<cfif Len(quoted) EQ 0>
<cfset quoted="nothing"/>
</cfif>

<cfif Len(person) EQ 0>
<cfset person="noone"/>
</cfif>

<cfoutput>
What is the quote? #quoted#
Who said it? #person#
#person# says, "#quoted#".
</cfoutput>
