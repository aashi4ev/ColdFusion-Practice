<cfparam name="$named" type="string" default="">
<cfset named = $named />
<cfoutput> #named# </cfoutput>
<cfoutput> #Len(named)# </cfoutput>
<cfset out1 = "Hi, #named#, nice to meet you!" />
<cfset out2 = "Hi #named#!" />
<cfset out3 = "Please fill out the empty field" />

<cfscript>
if (Len(named) EQ 0) {
out = out3;
}
else if (Len(named) LT 5) {
out = out1;
}
else {
out = out2;
}
</cfscript>

<cfoutput>
What is your name? #named#
#out#
</cfoutput>


