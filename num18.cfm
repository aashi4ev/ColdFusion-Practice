<cfsetting EnableCFOutputOnly="true">
<cfparam name="$temp" type="numeric">
<cfparam name="$unit" type="string" default="Fahrenheit">
<cfset unit = ($unit EQ "Fahrenheit" ? "Celsius" : "Fahrenheit")/>
<cfset temp= ($unit EQ "Fahrenheit" ? (($temp-32)*(5/9)) : (($temp*(9/5))+32)) />

<cfoutput>
Please enter the temperature in #$unit#: #$temp#
The temperature in #unit# is #temp#.
</cfoutput>
