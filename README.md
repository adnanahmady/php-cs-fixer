# Description
using this image you can easily apply php-cs-fixer on your project

# Usage

docker run -it --rm -v $(pwd)/src:/src adnanahmady/php-cs-fixer:latest --rules=@PSR12 fix /src

