FROM kalilinux/kali-linux-docker

#MAINTAINER www.en3o.pl

RUN apt-get update && \
    apt-get -y install python nmap dnsrecon wafw00f uniscan sslyze fierce lbd theharvester dnswalk golismero dmitry whois wapiti dirb host dnsmap dnsenum davtest whatweb nikto xsser && \
    apt-get -y autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


RUN mkdir rapidscan
WORKDIR /rapidscan
RUN wget https://raw.githubusercontent.com/skavngr/rapidscan/master/rapidscan.py --no-check-certificate -q
RUN chmod +x rapidscan.py

ENTRYPOINT ["python", "rapidscan.py"]



