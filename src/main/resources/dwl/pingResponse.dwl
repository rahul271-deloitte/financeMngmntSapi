%dw 2.0
output application/json
---
{
	status: "Running",
	apiName: p("api.name") default "",
	apiVersion: p("api.version") default "",
	timeStamp: now()
}