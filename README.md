# rapidscan-docker

Docker image of rapidscan, a multi-tool web vulnerability scanner (<https://github.com/skavngr/rapidscan>).

Image include some tools: `nmap dnsrecon wafw00f uniscan sslyze fierce lbd theharvester dnswalk golismero dmitry whois wapiti dirb host dnsmap dnsenum davtest whatweb nikto xsser`

Image build from Kali Linux image.

## How to use this image

Pull image

     $ docker pull en3o/rapidscan

or 

     $ git clone https://github.com/e3net/rapidscan-docker
     $ cd rapidscan-docker
     $ docker build .

### Run rapidscan container to analysis a website

    $ docker run -it --rm --name rapidscan en3o/rapidscan example.com

    Press Ctrl+C: skip current scan
    Press Ctrl+z: quit rapidscan


