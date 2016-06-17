# Testing Logstash Configuration

An example of how to test a logstash configuration. Uses shell and vanilla Python. Executes end-to-end tests.

## Usage

Run
`./run_demo.sh`

Example output

             $ ./run_tests.sh
             Sending logstash logs to /var/folders/lb/w82zc8ps6jq2_1tf219ctk_80000gn/T/tmp.SIyNazgk/logstash.out.
             test_cases/01-admin: OK
             test_cases/02-favicon: FAIL, missing file test_cases/02-favicon.expected-output.json
             test_cases/03-css: FAIL
             --- expected.json
             +++ actual.json
             @@ -3,7 +3,7 @@
                  "@version": "1",
                  "agent": "\"Mozilla/5.0 (Windows NT 6.0; WOW64; rv:2.0.1) Gecko/20100101 Firefox/4.0.1\"",
                  "auth": "-",
             -    "bytes": 1837,
             +    "bytes": "1837",
                  "clientip": "98.83.179.51",
                  "host": "localhost",
                  "httpversion": "1.1",
             $

The example config and the test data is from [www.elastic.co](https://www.elastic.co/guide/en/logstash/current/config-examples.html).
