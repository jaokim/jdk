# Welcome to the JDK!

For build instructions please see the
[online documentation](https://openjdk.java.net/groups/build/doc/building.html),
or either of these files:

- [doc/building.html](doc/building.html) (html version)
- [doc/building.md](doc/building.md) (markdown version)

See <https://openjdk.java.net/> for more information about
the OpenJDK Community and the JDK.

### Amiga specific instructions
#### Docker setup
```
docker build . -t jamiga-openjdk
```
```
docker run -ti --rm -v  E:/projekt/privat/amiga/jamiga/jdk-14.0.2/:/bootjdk -v E:/projekt/privat/amiga/jamiga/jdk/:/work jamiga-openjdk:latest
```
#### Building
```
sh configure --host=ppc-amigaos --target=ppc-amigaos --with-boot-jdk=/bootjdk/ --without-x --without-cups --with-freetype=bundled
make
```

