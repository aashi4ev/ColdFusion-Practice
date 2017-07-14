<cfsetting EnableCFOutputOnly="true">

<cfparam name="$word1" type="string"/>
<cfparam name="$word2" type="string"/>

<cffunction name="stringToArray" >
	<cfargument name="word" type="string" required="true" />
	<cfset wordlist = "" />
	<cfloop index="char" from="1" to="#Len(word)#">
		<cfset wordlist = ListAppend(wordlist, word[char]) />
	</cfloop>
	<cfreturn wordlist />
</cffunction>


<cffunction name="isAnagram" returnType="string">

	<cfargument name="$word1" type="string" required="true" default="tea"/>
	<cfargument name="$word2" type="string" required="true" default="eat"/>

	<cfoutput>Enter two strings and I'll tell you if they are anagrams:
Enter the first string: #$word1#
Enter the second string: #$word2# </cfoutput>
	
	<cfif #$word1# EQ #$word2#>
		<cfoutput>
#$word1# and #$word2# are not anagrams. </cfoutput>
	<cfelse>
		<cfif #Len($word1)# EQ #Len($word2)#>
			<cfset word1 = listSort(stringToArray(Lcase($word1)), "Text") />
			<cfset word2 = listSort(stringToArray(Lcase($word2)), "Text") />
			<cfif #word1# EQ #word2#>
				<cfoutput> 
#$word1# and #$word2# are anagrams.</cfoutput>
			<cfelse>
				<cfoutput> 
#$word1# and #$word2# are not anagrams!</cfoutput>
			</cfif>		
		<cfelse>
			<cfoutput> 
#$word1# and #$word2# are not anagrams.</cfoutput>
		</cfif>
	</cfif>

</cffunction>

<cfset anagram = isAnagram($word1, $word2)/>
