`You use Azure DevOps to manage the build and deployment of an app named App1.
`You have a release pipeline that deploys a virtual machine named VM1.
`You plan to monitor the release pipeline by using Azure Monitor.
`You need to create an alert to monitor the performance of VM1. The alert must be triggered when the average CPU usage exceeds 70 percent for five minutes.
`The alert must calculate the average once every minute.
`How should you configure the alert rule? To answer, select the appropriate options in the answer area.



    Aggregation is 1 minute. "Time granularity or time grain – The time period used to aggregate values together to allow display on a chart. Only specific ranges are available. Current minimum is 1 minute. The time granularity value should be smaller than the selected time range to be useful, otherwise just one value is shown for the entire chart."
    https://learn.microsoft.com/en-us/azure/azure-monitor/essentials/metrics-aggregation-explained
    upvoted 1 times
    BalderkVeit 2 years ago
    "The alert must be triggered when the average CPU usage exceeds 70 percent for five minutes", so Aggregation granularity (period) is 5 minutes. Frequency would be 1 minute.
    Static - agree
    greater than - agree

Azure Monitor : 
    Aggregation granularity - 

                The wording of the question could indeed be interpreted in different ways, and I understand why there might be some confusion.

            Here's a clarification:

            Aggregation Granularity (Period): This refers to the time interval over which data is collected and averaged. If you set the aggregation granularity to 5 minutes, the system will collect data over 5 minutes, then calculate the average CPU usage over this period.

            Frequency (Evaluation Frequency): This is how often the alert rule is evaluated. If you set the frequency to 1 minute, the system will check every minute if the condition (average CPU usage > 70% for 5 minutes) is met.

            So, in the context of the requirements: "The alert must be triggered when the average CPU usage exceeds 70 percent for five minutes" and "The alert must calculate the average once every minute", it could be interpreted as:

            Aggregation granularity should be 5 minutes (to calculate the average CPU usage over a 5 minute window), and
            Frequency should be 1 minute (to evaluate the condition every minute).
            So, depending on the precise interpretation of the requirements, either approach could be valid. It would be best to clarify these requirements to ensure the most appropriate configuration.



