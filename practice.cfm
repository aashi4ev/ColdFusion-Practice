<cfset num = "36fk"/>
<cfset string = "calendar_#Val(num)#.kl"/>
<cfoutput>
#string#
</cfoutput>
<cfoutput>
#Val("56t")#
</cfoutput>

<cfset first = "the way"/>
<cfset second = "hey" />
<cfset long = "I love the way, hey!"/>
<cfset last = "#Replace(long, #first#, "hey")#" />
<cfoutput>
#last#
</cfoutput>
