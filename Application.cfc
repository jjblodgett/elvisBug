component output="false" {
	this.name = "ElvisTestApp";

/*
	The folder / cfc references in this app are test to "/test/jj/..." or "test.jj..."
	Just adjust those to your local environment to test.
	test.cfm should work as-is; testError.cfm should error if machine doesn't work.
*/

	public void function OnRequest(required string targetPage) {
		include targetPage;
	}
}
