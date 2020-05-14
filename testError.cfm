<cfscript>
public any function testElvisLOCAL(type) {
    var testCopy = "LOCAL:hardcoded";
    writedump(testCopy);
    testCopy = testCopy ?: "LOCAL:false cond";
    writedump(testCopy);
}

cfc = new base();

// This calls will work on all machines
cfc.testElvisBase();

// This will break on machines that are vulnerable. Most are local dev machines with  CF2016u13+ and have CF11 installed.
cfc.testElvisExt();

writeoutput("<br> congrats! Your machine doesn't have a problem running this...");
</cfscript>

<!---
-----------------------------------------------------------------------------
THIS IS THE ERROR THROWN (or CFC version depending on which is running)
-----------------------------------------------------------------------------
Variable TESTCOPY is undefined.
 
The error occurred in [XXX}/test/jj/ext.cfc: line 10
Called from [XXX}/test/jj/test.cfm: line 15
Called from [XXX}/test/jj/Application.cfc: line 10
8 : 		var testCopy = "EXTENDED:hardcoded";
9 : 		testCopy = testCopy ?: "EXTENDED:false cond";
10 : 		writedump({testCopy=testCopy});
11 : 	}
12 : }
--->