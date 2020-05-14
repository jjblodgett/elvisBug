component output="true"
{
	public function init() {
		return this;
	}

	public any function testElvisExt() {
		var testCopy = "EXTENDED:hardcoded";
		testCopy = testCopy ?: "EXTENDED:false cond";
		writedump({testCopy=testCopy});
	}
}
