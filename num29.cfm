<cfsetting EnableCFOutputOnly="true">
<cfparam name="$ror" type="numeric">

<cfset maybe = #$ror# EQ 0 ? "Sorry. That'snot a valid input." : "It will take #72/$ror# years  to double your initial investment."/>

<cfoutput>
What is the rate of return? #$ror#
#maybe#
</cfoutput>


