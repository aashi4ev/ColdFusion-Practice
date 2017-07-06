<cfparam name="$people" type="numeric">
<cfparam name="$pizzas" type="numeric">

<cfset people= $people />
<cfset pizzas = $pizzas />
<cfset pieces = #8 * pizzas# />
<cfset leftover = #pieces mod people# />
<cfif leftover EQ 0 >
  <cfset each = #pieces/people# />
  <cfelse>
  <cfset each=#(pieces-leftover)/people# />
</cfif>

<cfoutput>
How many people? #people#
How many pizzas do you have? #pizzas#
#people# people with #pizzas# pizzas.
Each person gets #each# pieces of pizzas.
There are #leftover# leftover pieces.
</cfoutput>
