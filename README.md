# alpine-nanopack
Docker image of Nanopack

## Usage

+ Run `NanoFilt`

```
docker run --rm $PWD:/tmp nanopack sh -c "NanoFilt -l 200 -q 10 < /tmp/input.fastq > /tmp/output.fastq"
```
