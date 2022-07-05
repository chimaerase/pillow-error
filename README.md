# pillow-error

This repo includes a simple Dockerfile to help demonstrate an install error with Pillow 9.1.1
that's unique to the new Apple M1 processor.

# To demonstrate the problem

Build this Dockerfile, using `--progress=plain` to simplify the output.

````bash
docker build -t pillow-error --progress=plain . 
````
