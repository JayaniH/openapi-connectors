// Copyright (c) 2022 WSO2 LLC. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/http;

# Provides a set of configurations for controlling the behaviours when communicating with a remote HTTP endpoint.
@display {label: "Connection Config"}
public type ConnectionConfig record {|
    # Configurations related to client authentication
    http:BearerTokenConfig auth;
    # The HTTP version understood by the client
    http:HttpVersion httpVersion = http:HTTP_2_0;
    # Configurations related to HTTP/1.x protocol
    ClientHttp1Settings http1Settings?;
    # Configurations related to HTTP/2 protocol
    http:ClientHttp2Settings http2Settings?;
    # The maximum time to wait (in seconds) for a response before closing the connection
    decimal timeout = 60;
    # The choice of setting `forwarded`/`x-forwarded` header
    string forwarded = "disable";
    # Configurations associated with request pooling
    http:PoolConfiguration poolConfig?;
    # HTTP caching related configurations
    http:CacheConfig cache?;
    # Specifies the way of handling compression (`accept-encoding`) header
    http:Compression compression = http:COMPRESSION_AUTO;
    # Configurations associated with the behaviour of the Circuit Breaker
    http:CircuitBreakerConfig circuitBreaker?;
    # Configurations associated with retrying
    http:RetryConfig retryConfig?;
    # Configurations associated with inbound response size limits
    http:ResponseLimitConfigs responseLimits?;
    # SSL/TLS-related options
    http:ClientSecureSocket secureSocket?;
    # Proxy server related options
    http:ProxyConfig proxy?;
    # Enables the inbound payload validation functionality which provided by the constraint package. Enabled by default
    boolean validation = true;
|};

# Provides settings related to HTTP/1.x protocol.
public type ClientHttp1Settings record {|
    # Specifies whether to reuse a connection for multiple requests
    http:KeepAlive keepAlive = http:KEEPALIVE_AUTO;
    # The chunking behaviour of the request
    http:Chunking chunking = http:CHUNKING_AUTO;
    # Proxy server related options
    ProxyConfig proxy?;
|};

# Proxy server configurations to be used with the HTTP client endpoint.
public type ProxyConfig record {|
    # Host name of the proxy server
    string host = "";
    # Proxy server port
    int port = 0;
    # Proxy server username
    string userName = "";
    # Proxy server password
    @display {label: "", kind: "password"}
    string password = "";
|};

# Interface LinkInterface Represents link with collected data and initialized vector for decryption.
public type AnalyticsDataLinkInterface record {
    # URL
    string url;
    # initialization vector
    string initialization_vector;
};

# Error parameters item
public type ErrorParametersItem record {
    # ACL resource
    string resources?;
    # Missing or invalid field name
    string fieldName?;
    # Incorrect field value
    string fieldValue?;
};

# Address Consent Token (XML)
public type AmazonshippingaddressAmazonorderreferenceidBody1 record {
    # Address Consent Token
    string addressConsentToken;
};

# Errors list
public type ErrorErrors ErrorErrorsItem[];

# Address Consent Token (JSON)
public type AmazonshippingaddressAmazonorderreferenceidBody record {
    # Address Consent Token
    string addressConsentToken;
};

# Error parameters list
public type ErrorParameters ErrorParametersItem[];

# Error details
public type ErrorErrorsItem record {
    # Error message
    string message?;
    # Error parameters list
    ErrorParameters parameters?;
};

# Address Consent Token
public type AmazonbillingaddressAmazonorderreferenceidBody record {
    # Address Consent Token
    string addressConsentToken;
};

# Address Consent Token(XML)
public type AmazonbillingaddressAmazonorderreferenceidBody1 record {
    # Address Consent Token
    string addressConsentToken;
};

public type ErrorResponse record {
    # Error message
    string message;
    # Errors list
    ErrorErrors errors?;
    # Error code
    int code?;
    # Error parameters list
    ErrorParameters parameters?;
    # Stack trace
    string trace?;
};
