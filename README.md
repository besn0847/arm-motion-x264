# arm-motion-x264
Motion for Raspberry Pi compiled with x264 support through GPU

To start the container with default config :
```bash
docker run -d -P arm-motion-x264
```

But you can also use your local datastore :
```bash
docker run -d -P -v <your local datastore 1>:/data -v <your local datastore 2>:/conf arm-motion-x264
