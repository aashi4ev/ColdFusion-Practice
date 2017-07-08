<cfparam name="$principal" type="numeric">
<cfparam name="$rate" type="numeric">
<cfparam name="$years" type="numeric">
<cfparam name="$times" type="numeric" default="1">

<cfset rate=#$rate/100#/>
<cfset total = #$principal*((1+(rate/$times))^($times*$years))#/>

<cfoutput>
What is the principal amount? #$principal#
What is the rate? #$rate#
What is the number of years? #$years#
What is the number of times the interest is compounded per year? #$times#
$#$principal# invested at #$rate#% for #$years# compounded #$times# times per year is $#total#.
</cfoutput>
