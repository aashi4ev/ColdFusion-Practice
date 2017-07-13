<cfsetting EnableCFOutputOnly="true">
<cfparam name="$num1" type="numeric">
<cfparam name="$num2" type="numeric">
<cfparam name="$num3" type="numeric">

<cfset big1 = ( #$num1# GT #$num2# ? #$num1# : #$num2# )/>
<cfset big = ( #big1# GT #$num3# ? #big1# : #$num3# )/>

<cfoutput>
Enter the first number: #$num1#
Enter the second number: #$num2#
Enter the third number: #$num3#
The largest number is #big#.
</cfoutput>

