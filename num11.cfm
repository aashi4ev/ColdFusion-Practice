<cfparam name="$euros" type="numeric">
<cfparam name="$exchangeRate" type="numeric">

<cfset dollars = # DollarFormat(($euros*$exchangeRate)/100) # />

<cfoutput>
How many euros are you exchanging? #$euros#
What is the exchange rate? #$exchangeRate#
#$euros# euros at an exchange rate of #$exchangeRate# is #dollars# U.S. dollars.
</cfoutput> 
