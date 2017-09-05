#######################
# Use a JSON resource #
#######################
$uri = "https://www.whoisxmlapi.com/whoisserver/"`
        +"DNSService?type=_all"`
        +"&domainName=google.com"`
        +"&username=Your_whois_api_username&password=Your_whois_api_password"`
        +"&outputFormat=json"


$j = Invoke-WebRequest -Uri $uri
echo "JSON:`n---" $j.content "`n"

#######################
# Use a XML resource #
#######################

$uri = "https://www.whoisxmlapi.com/whoisserver/"`
        +"DNSService?type=_all"`
        +"&domainName=google.com"`
        +"&username=Your_whois_api_username&password=Your_whois_api_password"`
        +"&outputFormat=xml"

$j = Invoke-WebRequest -Uri $uri
echo "XML:`n---" $j.content