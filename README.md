# elvisBug
This is code to test a possible bug with elvis operator ?: in CF2016 (usually u13+) and having CF11 installed on a developer instance

Instructions:
Download repo and run /test.cfm to see example of it working and then /testError.cfm to see the same call that fails.

Current info:
Requirements:
- This happens on CF2016 (currently always u13 or higher).
- Does not seem to happen on full servers but fails on local Dev machines.
- Almost ALL machines that fail ALSO have CF11 installed. We have one instance where it fails and the user does not have CF11 installed and a user where it works but he does not have CF 11 installed. But there are at least 4 machines that fail in our environment. It does not happen on any servers.
- The mix of JRE does not seem to matter (CF jre, JDK 1.8.241 or 251)
