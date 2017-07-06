<cfparam name="$length" type="numeric">
<cfparam name="$width" type="numeric">

<cfset length=$length/>
<cfset width=$width/>
<cfset per=350/>

<cfset area = #length*width# />
<cfset gallons = #ceiling(area/350)# />

<cfoutput>
You will need #gallons# gallons of paint to cover #area# square feet.
</cfoutput>

