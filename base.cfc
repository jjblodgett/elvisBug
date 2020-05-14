component extends="ext" output="true"
{
	public function init() {
		return this;
	}

	public any function testElvisBase() {
		var testCopy = "BASE:hardcoded";
		testCopy = testCopy ?: "BASE:false cond";
		writedump({testCopy=testCopy});
	}
}
