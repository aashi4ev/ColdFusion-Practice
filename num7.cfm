<cfparam name="$length" type="numeric" default="1">
<cfparam name="$width" type="numeric" default="1">

<cfset length = $length />
<cfset width = $width />
<cfset areaf = #length * width# />
<cfset convfact = 0.09290304 />
<cfset aream = 1/>
<cfset aream = #((areaf^2)*convfact)^0.5# />

<cfoutput>
What is the length of the room in feet? #length#
What is the width of the room in feet? #width#
You entered dimensions of #length# feet by #width# feet.
The area is #areaf# square feet which is equivalent to #aream#.
</cfoutput>
