sequenceDiagram
autonumber
participant Client
participant OAuthProvider
participant Server

    activate Client
    Client->>+OAuthProvider: Request access token
    OAuthProvider-->>-Client: Send access token
    Client->>Server: Request resource w/ access token
    activate Server
    Server->>+OAuthProvider: Validate access token
    OAuthProvider-->>-Server: Valid token
    Server-->>Client: Send resource
    deactivate Server
    deactivate Client
    %% Alice->>+John: Hello John, how are you?
    %% Alice->>+John: John, can you hear me?
    %% John-->>-Alice: Hi Alice, I can hear you!
    %% John-->>-Alice: I feel great!


    %% graph LR
    %% A[Client]
    %% B(DNS)
    %% C(Web CDN)
    %% D(Web Server)

    %% B <--> A
    %% A <--> C
    %% C <--> D
