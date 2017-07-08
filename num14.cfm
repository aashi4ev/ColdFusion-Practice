<cfparam name="$order" type="numeric">
<cfparam name="$state" type="string" default="">

<cfset maybe = ""/>
<cfset total = #$order#>

<cfif $state EQ "WI">
<cfset total = #$order * 1.055# >
<cfset maybe = "The subtotal is #dollarFormat($order)#. 
The tax is #dollarFormat($order*0.055)#."> 
</cfif>

<cfoutput>
What is the order amount? #$order#
Whats is the state? #$state#
#maybe#
The total is #dollarFormat(total)#.
</cfoutput>

