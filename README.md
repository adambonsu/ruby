# Ruby Image

## Usage

### Build image
```
docker image build --tag adambonsu/ruby:2.6 .
```

### Push image to docker hub
```
docker login
docker push adambonsu/ruby:2.6
```

### Run ruby environment without local Gemfile
#### Interactive
```
docker container run -it --rm adambonsu/ruby:2.6
docker container run -it --rm adambonsu/ruby:2.6 sh
```
#### Non-interactive
```
docker container run --rm adambonsu/ruby:2.6 ruby --version
docker container run --rm adambonsu/ruby:2.6 {SPECIFY_COMMAND_HERE} 
```

### Run ruby environment with local Gemfile
#### Interactive
```
docker container run -it --rm -v $(pwd):/home adambonsu/ruby:2.6
docker container run -it --rm -v $(pwd):/home adambonsu/ruby:2.6 sh
```
#### Non-interactive
```
docker container run --rm -v $(pwd):/home adambonsu/ruby:2.6 ruby --version
docker container run --rm -v $(pwd):/home adambonsu/ruby:2.6 {SPECIFY_COMMAND_HERE} 
```
