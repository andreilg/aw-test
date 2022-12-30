graph
linkStyle default interpolate basis
subgraph VSCode
ide(<center>IDE</center>)
end
subgraph GitHub
sourceCodeCDN(<center>Source Code CDN</center>)
sourceCodeServer(<center>Source Code Server</center>)
devServer(<center>Dev Server</center>)
docServer(<center>Doc Server</center>)
sourceCodeCDN---sourceCodeServer
devServer<-->|Pull/Response|sourceCodeServer
sourceCodeServer-->docServer
end
subgraph Netlify
webCDN(<center>Web CDN</center>)
webServer(<center>Web Server</center>)
buildServer(<center>Build Server</center>)
webCDN---webServer
buildServer-->|Push|webCDN
end
subgraph Browser
client(<center>Client</center>)
end
subgraph Cloudinary
assetCDN(<center>Asset CDN</center>)
assetServer(<center>Asset Server</center>)
assetProcessingServer(<center>Asset Processing Server</center>)
assetCDN---assetServer
assetServer<-->|Request/Response|assetProcessingServer
end

devServer<-->|Pull/Response|assetCDN

buildServer<-->|Poll/Response|sourceCodeCDN

ide<-->|WebSocket|devServer

client<-->|Request/Response|webCDN
client<-->|Request/Response|assetCDN

%% ip((<center><br>IP<br><br></center>))-.-router
%% dns((<center><br>DNS<br><br></center>))-.-router
%% wan2[<center>LTE 50/20 Mb<br><br>192.168.1.1</center>]---router
%% router---|100Mb|ap[<center>RT-AC1200<br><br>10.20.30.3</center>]
%% router---|1Gb|pc(<center>PC<br><br>10.20.30.190</center>)
%% router---|1Gb|switch[<center>TL-SG105E<br><br>10.20.30.2</center>]
%% subgraph red1
%% ap-.-cam1(<center>Camera<br><br>10.20.30.171</center>)
%% ap-.-cam2(<center>Camera<br><br>10.20.30.172</center>)
%% ap-.-phone(<center>Phone<br><br>10.20.30.191</center>)
%% ap-.-ir(<center>IR<br><br>10.20.30.180</center>)
%% end
%% subgraph red2
%% switch---|100Mb|pi1(<center>RPi 3B<br><br>10.20.30.150</center>)
%% switch---|1Gb|pi2(<center>RPi 3B+<br><br>10.20.30.151</center>)
%% switch---|100Mb|nvr(<center>NVR<br><br>10.20.30.170</center>)
%% switch---|1Gb|laptop(<center>Laptop<br><br>10.20.30.192</center>)
%% end
