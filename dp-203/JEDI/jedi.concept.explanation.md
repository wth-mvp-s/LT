

#   IMPORTANT CONCEPTS

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



Read-access geo-redundant storage (RA-GRS): This option provides the highest level of data durability by replicating your data to a secondary geographic location (hence "geo-redundant"). The "read-access" part means that not only is your data copied to a secondary location, but it's also available for read access if the primary location becomes unavailable. This is why it's the correct choice for ensuring availability for read workloads during an outage in the primary region, while still keeping costs relatively low.

Geo-redundant storage (GRS): This is similar to RA-GRS in that it replicates your data to a secondary geographic location. The difference, however, is that with GRS, the data in the secondary location isn't available for read access if the primary location becomes unavailable. You can only access the data in the secondary location if Microsoft initiates a failover from the primary to secondary location.

Zone-redundant storage (ZRS): ZRS replicates your data across multiple datacenters in the same region (or across regions in some cases). However, if an entire region experiences an outage (which is the scenario specified in the question), ZRS wouldn't ensure that the data is available for read workloads in a secondary region.

Locally-redundant storage (LRS): LRS replicates your data within the same data center. It doesn't replicate the data to another region, so it wouldn't help if an outage occurs in the primary region.

