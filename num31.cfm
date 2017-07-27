<cfsetting EnableCFOutputOnly="true">

<cfparam name="$age" type="numeric">
<cfparam name="$RestingPulse" type="numeric">

<cfoutput> Resting Pulse: #$RestingPulse# Age: #$age# </cfoutput>

<cfloop index="p" from="0.55" to="1" step="0.05">
	<cfset target = (((220-$age)-$RestingPulse)*p)+$RestingPulse />
	<cfoutput>
Intensity: #100*p#% Rate: #target# bpm </cfoutput>
</cfloop>
