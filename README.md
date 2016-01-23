# pupy-docker

The pupy remote access tool contained in a docker image for you to test various deployment scenerios.

To run a pupy shell:
`docker run -it --rm --name pupysh pupy ./pupysh.py --log-lvl DEBUG`

To run a pupy proxy (client that connects to the shell):
`docker run -it --rm --link pupysh:pupysh pupy ./pp.py auto_proxy --host pupysh`
