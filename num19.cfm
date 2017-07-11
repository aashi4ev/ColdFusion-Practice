<cfsetting EnableCFOutputOnly="true">

<cfparam name="$weight" type="numeric">
<cfparam name="$height" type="numeric">

<cfset BMI = #($weight/($height*$height))*703#/>

<cfset maybe= (#BMI# LT 18.5 ? "You are underweight. You should see a doctor." : #BMI# LTE 25 ? "You are within the ideal weight range." : "You are overweight. You should see a doctor.")>

<cfoutput>
Your BMI is #BMI#.
#maybe#
</cfoutput>
