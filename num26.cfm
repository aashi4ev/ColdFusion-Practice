<cfsetting EnableCFOutputOnly="true">
<cfparam name="$balance" type="numeric">
<cfparam name="$APR" type="numeric">
<cfparam name="$perMonth" type="numeric">

<cffunction name="calculateMonthsUntilPaidOff">
	<cfsetting EnableCFOutputOnly="true">
	<cfargument name="$balance" type="numeric">
	<cfargument name="$APR" type="numeric">
	<cfargument name="$perMonth" type="numeric">

	<cfset i = #($APR/100)/365# />
	<cfset p1 = #(1+i)^30# />
	<cfset p2 = #$balance/$perMonth# />
	<cfset p3 = #1 - p1# />
	<cfset num = #Log10(1+(p2*p3))# />
	<cfset den = #Log10(1+i)# />
	<cfset months = #(-1/30)*(num/den)# />
	
	<cfoutput>What is your balance? #DollarFormat($balance)#
What is the APR on the card (as a percent)? #$APR#%
What is the monthly payment you can make? #DollarFormat($perMonth)#

It will take you #ceiling(months)# months to pay off this card. </cfoutput>
</cffunction>

<cfset month = calculateMonthsUntilPaidOff($balance, $APR, $perMonth) />
