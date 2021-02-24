# Container Image based on Fedora with Virtual framebuffer, VNC server, and Joe - small window manager. 


This is a container image that runs a virtual frame buffer(Xvfb) with a small window manger (Joe)  that accessible via rfb protocol (VNC).

The components are :

![x11vnc-desktop.png](./images/x11vnc-desktop.png)

## Build image

```bash
git clone https://github.com/tkagn/x11vnc-desktop.git
podman build -t x11vnc-desktop -f Dockerfile 
```

## Running the Image

To run the image:

- Open port on firewall firewall  
- Use `podman run` to run the image  
- Use `vncviewer` to access the desktop  

```bash
sudo firewall-cmd --add-port=8000/tcp  
podman run -it --rm --name=x11vnc-desktop -p 8000:5900 localhost/x11vnc-desktop 
vncviewer localhost:8000
```
## Stopping the container

To stop the container:

```bash
podman stop x11vnc-desktop
```
## Removing the Image  

Use `podman rmi` to remove the image  

```bash
podman rmi x11vnc-desktop
```

## Related Projects
 - [Joe's Window Manager](https://joewing.net/projects/jwm/): Lightweight stacking window manager for the X Window System.
 - [Xvfb](https://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml): virtual framebuffer X server for X Version 11.
 - [Fedora Base Image ](registry.fedoraproject.org/fedora): Fedora container image