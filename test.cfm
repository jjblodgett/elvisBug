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

writeoutput("<br> finished with control test");
</cfscript>