<cfparam name="$noun" type="string" default="i">
<cfparam name="$verb" type="string" default="carry">
<cfparam name="$adjective" type="string" default="purple">
<cfparam name="$adverb" type="string" default="heavily">

<cfset noun= $noun />
<cfset verb= $verb />
<cfset adjective = $adjective />
<cfset adverb= $adverb />

<cfoutput>
noun: #noun#
Enter a verb: #verb#
Enter an adjective: #adjective#
Enter an adverb: #adverb#
Do you #verb# your #adjective# #noun# #adverb#?
</cfoutput>
