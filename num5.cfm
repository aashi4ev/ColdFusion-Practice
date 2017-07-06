<cfparam name="$num1" type="numeric">
<cfparam name="$num2" type="numeric">

<cfset num1 = LSParseNumber($num1)/>
<cfset num2 = LSParseNumber($num2)/>

<cfoutput>
What is the first number? #num1#
What is the second number? #num2#
#num1# - #num2# = #num1 - num2#
#num1# + #num2# = #num1 + num2#
#num1# * #num2# = #num1 * num2#
#num1# / #num2# = #num1 / num2#
</cfoutput>
