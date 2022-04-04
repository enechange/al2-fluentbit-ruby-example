# al2-fluentbit-ruby-example

Example of transferring Ruby application logs to Fluent Bit on Amazon Linux 2.

## Usage

```
$ docker-compose build

$ docker-compose up -d

$ docker-compose exec app ruby app.rb

$ docker-compose logs
Attaching to al2-fluentbit-ruby-example_app_1
app_1  | Fluent Bit v1.9.1
app_1  | * Copyright (C) 2015-2021 The Fluent Bit Authors
app_1  | * Fluent Bit is a CNCF sub-project under the umbrella of Fluentd
app_1  | * https://fluentbit.io
app_1  |
app_1  | [2022/04/04 08:17:33] [ info] [fluent bit] version=1.9.1, commit=, pid=1
app_1  | [2022/04/04 08:17:33] [ info] [storage] version=1.1.6, type=memory-only, sync=normal, checksum=disabled, max_chunks_up=128
app_1  | [2022/04/04 08:17:33] [ info] [cmetrics] version=0.3.0
app_1  | [2022/04/04 08:17:33] [ info] [input:forward:forward.0] listening on 0.0.0.0:24224
app_1  | [2022/04/04 08:17:33] [ info] [sp] stream processor started
app_1  | [2022/04/04 08:17:33] [ info] [output:stdout:stdout.0] worker #0 started
app_1  | [0] myapp.access: [1649060277.184563681, {"key 1"=>123456789, "key 2"=>"abcdefg"}]
app_1  | [0] warn: [1649060277.185208092, {"level"=>"WARN", "message"=>"This will be output."}]
```
