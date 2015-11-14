# Gateway

This is blog series on creating an API gateway from scratch.  

## Step 1.  Initial Requirements

### Overview
Create a Service which acts as a `proxy` to other downstream services.

### Requirements
- **Functional**
    - The gateway must support a downstream service which is a SOAP Based Web Service supporting the same WSDL as the downstream service
    - The gateway must enforce guaranteed delivery to the downstream service.
    - The gateway must have an asyncronous interface.
    - The gateway must validate the incoming message against the schema of the downstream service.
    - The gateway must use mutual authentication.
    - The gateway must use transport layer security.
    - The gateway must require non-repudiation.
    - The gateway must scan incoming requests and their payload for malware
    - The gateway must persist the response from the downstream service for a specified period of 72 hours so that consuming services to the gateway can consume the response.
    - The gateway must return different error codes for each of the following error conditions:
        - The message does not conform to the schema
        - The message is not well formed i.e. invalid XML
        - The request cannot be authenticated
        - The request has not be signed
        - The request signature cannot be verified
        - The request contains a potentially dangerous payload
    - The gateway must proxy any response including error responses from the downstream service to the gateway consumer
    - The gateway endpoints must be configurable
- **Non-functional**
    - **Deployment**
        - The gateway must demonstrate repeatable provisioning.
        - The gateway must demonstrate horizontal scalability.
    - **Development**
        - The gateway must have the ability to be deployed on a developers machine with an in-memory configuration.
    - **Operational**
        - The gateway must support 20 requests / second
    - **Performance**
        - The gateway must support 20 requests / second
    - **Availability**
        - The gateway must be resilient and support 50% failure in the infrastructure.
        - The gateway must enforce a maximum request size of 200 KB.
    - **Security**
        - The gateway must use TLS 1.2.
        - The gateway must require Client X509 Certificates for authentication.
        - All requests to the gateway must be signed with an X509 Certificate.
        - Certificate have a 4086 key size.
        - Separate Intermediary CA used between Client and Gateway and the Gateway to the proxied service.
        - All data at rest is encrypted.
    - **Monitoring**
        - The gateway must provide statistics including:
            - Network
                - Packet loss
                - Latency
                - Bandwidth
            - VM 
                - CPU
                - I/O
                - Memory
            - OS
                - Swapping
                - Process
                - Freespace
            - Middleware
                -  Throughput
                -  Request-size
                -  Cache-Size
            - Application:
                -  Availability
                -  Response Time
                -  Error Rate
            - Business:
                - Message Correlation
                    - Number of messages sent
                    - Number of messages correlated
                    - Number of messages failed


Performance – for example Response Time, Throughput, Utilization, Static Volumetric
Scalability
Capacity
Availability
Reliability
Recoverability
Maintainability
Serviceability
Security
Regulatory
Manageability
Environmental
Data Integrity
Usability
Interoperability

### Functional Requirement 1
#### The gateway must support a downstream service which is a SOAP Based Web Service supporting the same WSDL as the downstream service

- Introduce the WSDL of the downstream service
- Create an initial project
- Setup some CI (AWS provisioning?)
- Create a test client for the service
- Create a stub service client
- Create the gateway endpoint to listen for incoming connections, proxy to the downstream service and proxy the response back to the calling client.
- Deploy (provisioning into AWS from the start including testing)
- Conclusion

### Funcional Requirement 2
#### 
