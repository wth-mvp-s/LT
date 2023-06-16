##   2commenjttest

#### 0068::
`You are planning a streaming data solution that will use Azure Databricks. 
`The solution will stream sales transaction data from an online store. The solution has the following specifications:
`The output data will contain items purchased, quantity, line total sales amount, and line total tax amount.
`
`✑ Line total sales amount and line total tax amount will be aggregated in Databricks.
`✑ Sales transactions will never be updated. Instead, new rows will be added to adjust a sale.
`You need to recommend an output mode for the dataset that will be processed by using Structured Streaming. The solution must minimize duplicate data.
`What should you recommend?
`::
`"Append" - In structured streaming, the "Append" output mode is used when new records are added to the output table, which matches the requirement.
`"Update" and "Complete" modes are not suitable as "Update" mode allows for existing data to be updated which is not the case here, and "Complete" mode rewrites the entire table which is unnecessary for this requirement.

- [ ] Update
- [ ] Complete
- [x] Append


#### 0070::
`You are designing an anomaly detection solution for streaming data from an Azure IoT hub. The solution must meet the following requirements:
`✑ Send the output to Azure Synapse.
`✑ Identify spikes and dips in time series data.
`✑ Minimize development and configuration effort.
`Which should you include in the solution?
`::
`"Azure Stream Analytics" - This service can connect to various sources like IoT Hub for data ingestion, and it has built-in anomaly detection capabilities for time-series data. It also supports exporting the results directly to Azure Synapse. It's a fully managed serverless offering, hence minimizing the development and configuration effort.
`
`Azure Databricks and Azure SQL Database, although capable of handling data processing tasks, do not provide out-of-the-box capabilities that align with the given requirements.

- [ ] Azure Databricks
- [x] Azure Stream Analytics
- [ ] Azure SQL Database