<cfsetting EnableCFOutputOnly="true">
<cfparam name="$state" type="string" default="">
<cfparam name="$order" type="numeric">

<cfset tax = (Compare(#$state#, "WI") EQ 0 ? #$order*0.05# : Compare(#$state#, "IL") EQ 0 ? #$order*0.08# : 0.) /> 

<cfoutput>
What is the order amount? #DollarFormat($order)#
What state do you live in? #$state#
The tax is #DollarFormat(tax)#.
The total is #DollarFormat(tax+$order)#.
</cfoutput>
