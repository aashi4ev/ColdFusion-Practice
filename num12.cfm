<cfparam name="$principal" type="numeric">
<cfparam name="$rateOfInterest" type="numeric">
<cfparam name="$numberOfYears" type="numeric">

<cfset interestrate=#$rateOfInterest/100#/>
<cfset amount = #$principal*(1+(interestrate*$numberOfYears))# />

<cfoutput>
After #$numberOfYears# years at #$rateOfInterest#%, the investment will be worth $#amount#.
</cfoutput>
