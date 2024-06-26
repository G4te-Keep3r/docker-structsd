# docker-structsd

[Docker](https://www.docker.com) container for running the [Structs Consensus Engine](https://github.com/playstructs/structsd/). 

Docker Hub: [https://hub.docker.com/r/structs/structsd/](https://hub.docker.com/r/structs/structsd/)

## Structs
In the distant future the species of the galaxy are embroiled in a race for Alpha Matter, the rare and dangerous substance that fuels galactic civilization. Players take command of Structs, a race of sentient machines, and must forge alliances, conquer enemies and expand their influence to control Alpha Matter and the fate of the galaxy.


# container name
tldr need unique container for each docker. Change name in container_name.txt if want before running mk_volume.sh


# How to Build
****************************************need work here, also didn't say where to chain that stuff (scripts/configure_chain.sh)

BEFORE building, edit configure_chain.sh (in scripts dir). Change wallet/account names (wallet1, wallet2), add more, and/or removove 1. If you are not recovering keys in this creation (ie making new ones), remove the "--recover" line endings.

```
git clone https://github.com/G4te-Keep3r/docker-structsd.git
cd docker-structsd

docker build -t localstructs88 --build-arg="monarg =monikerhereeeeeeeee" .

...build arg issues, manually adjust ********************* then 
docker build -t localstructs88 .
```

# How to Use this Image

## Quickstart

The following will run the latest Structs consensus server.

```
******************ignore, will be corrected later. Use iunteractive in a screen for now

docker run -d --rm -p 26656:26656 --name=structsd structs/structsd:latest
```

## Interactive

A good way to run for development and for continual monitoring is to attach to the terminal:

```
run_droid_it.sh
```

replace structs/structsd:latest with localstructs88 for the one you just built

# Learn more

- [Structs](https://playstructs.com)
- [Project Wiki](https://watt.wiki)
- [@PlayStructs Twitter](https://twitter.com/playstructs)


# License

Copyright 2021 [Slow Ninja Inc](https://slow.ninja).

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.