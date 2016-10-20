# Files
A Haskell library for extracting/rearranging file content

## Features
* Zero dependency (self contained)

## Installation
Download a release from the [release page](https://github.com/yuhangwang/Files/releases)
or do git clone
```
git clone https://github.com/yuhangwang/Files
```

```
cd Files
stack build
copy  .\.stack-work\install\26812796\bin\Files.exe C:\Users\Steven\bin\files.exe
```

Now you have a binary executable of `Files`!

## Getting started
```
files output.txt 10 input1.txt input2.txt ...
```
This will result in an output file containing the first 10 lines from input1.txt, input2.txt, ...


## License
MIT/X11
