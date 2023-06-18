# Azure Cosmos DB
    globally distributed, 
    multi-model database service
        does not serve as a reference data source

# Azure IoT Hub
    central message hub between IoT vs devices it manages
        does not serve as a reference data source.
# Azure Blob Storage 
    Reference data is stored in Azure Blob Storage 
    used to perform lookups or join data to the incoming events
        This feature is used in scenarios where the incoming data stream needs to be augmented or looked up against a static dataset.

# Azure Stream Analytics
    real-time analytics and complex event-processing engine
    used to analyze and visualize streaming data in real-time.
        - can ingest data from Azure Event Hubs
        - perform analytics on it using a SQL-like language
        - output the data to various sources like another Event Hub
        
        has built-in geospatial functions, which can be used to determine whether a point (like a GPS position) is within a specified polygon (like the expected area for each vehicle).

##          Streaming Data: 
            tweet, IoT, Stock market data, Web server logs
            
            description
                real-time continuously generated, small sizes (e.g. sensor data) generated constantly and in large volumes. 
            
            characteristics
                velocity, 
                volume, 
                variety.

##          # Reference Data (lookup data) 
            Product information, Customer information, Geographical data
            
            characteristics
                static or slowly changing, can be used to augment or enrich the streaming data
                context to the streaming data
                

# Windows
     No window would imply processing each event individually
     
     Session windows group events that arrive at similar times
     
     Tumbling windows are fixed-sized, non-overlapping, and contiguous time intervals

     Hopping window hops forward in time by a fixed period. This means that if you have a Hopping window size of one minute, and it hops every 30 seconds, it can cover the events within the desired 30 seconds time frame, ensuring a quicker response to the event.