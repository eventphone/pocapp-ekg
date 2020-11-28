<!--
SPDX-FileCopyrightText: 2020 Martin Stoffers
SPDX-License-Identifier: BSD-3-Clause
-->

# POCAPP EKG

The script plays an EKG sounds when answering a phone call. 


## Usage

The script is intend to be used within the Eventphone telephone system.


## Convert your audio files

You can use the following sox command to convert your mp3 or wav files to slin:

```sh
sox input.mp3 -t raw -r 8000 -c 1 output.slin
```

You may need to install the sox format handler:

```sh
apt install libsox-fmt-mp3
```

You can use the following command to test your slin file:

```sh
mv output.slin output.sln
play output.sln
mv output.sln output.slin
```


## License

Please see the file [LICENSE.md](LICENSE.md) for further information about how the content is licensed.

