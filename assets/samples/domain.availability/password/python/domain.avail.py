try:
    from urllib.request import urlopen
except ImportError:
    from urllib2 import urlopen

domain = 'example.com'
password = 'your whois api password'
username = 'your whois api username'

url = 'http://www.whoisxmlapi.com/whoisserver/WhoisService?'\
    + 'domainName=' + domain + '&username=' +username + '&password=' +password\
    + '&cmd=GET_DN_AVAILABILITY' + '&getMode=DNS_AND_WHOIS'

print(urlopen(url).read().decode('utf8'))