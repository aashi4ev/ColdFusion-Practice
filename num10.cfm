<cfparam name="$item1" type="numeric">
<cfparam name="$quant1" type="numeric" default="1">
<cfparam name="$item2" type="numeric">
<cfparam name="$quant2" type="numeric" default="1">
<cfparam name="$item3" type="numeric">
<cfparam name="$quant3" type="numeric" default="1">

<cfset subtotal = #($item1*$quant1)+($item2*$quant2)+($item3*$quant3)#/>
<cfset tax = #subtotal*0.055#/>
<cfset total = #subtotal+tax#/>

<cfoutput>
Enter the price of item 1: #$item1#
Enter the quantity of item 1: #$quant1#
Enter the price of item 2: #$item2#
Enter the quantity of item 2: #$quant2#
Enter the price of item 3: #$item3#
Enter the quantity of item 3: #$quant3#
Subtotal: #subtotal#
Tax: #tax#
Total: #total#
</cfoutput>
