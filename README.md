# Exercism

[Exercism](http://exercism.io/) is a plateform to learn programming languages.
It offers coding exercises for over 30 languages.

The following Dockerfiles allow you to test your challenges by only installing
docker. This makes trying new languages easier. 

### Getting started
```bash
LANGUAGE=???
EXERCISE=~/exercism/$LANGUAGE/???

docker run \
    --rm \
    --interactive \
    --tty \
    --volume $EXERCISE:/opt/exercise \
    plippe/exercism:$LANGUAGE
```

or

```bash
LANGUAGE=???
EXERCISE=~/exercism/$LANGUAGE/???

docker run --rm -itv $EXERCISE:/opt/exercise plippe/exercism:$LANGUAGE
```

### Supported languages
The following languages are available on [Docker Hub](https://hub.docker.com/r/plippe/exercism/).
- PureScript: http://exercism.io/languages/purescript
- Rust: http://exercism.io/languages/rust
- Scala: http://exercism.io/languages/scala
