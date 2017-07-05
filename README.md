# Sensu::Extensions::SystemProfileWmi

This check extension collects Windows system metrics using the SVCHOST WMI
service, and formats them as plaintext Graphite data.

## Installation

1. Install this gem using sensu-install

    ``` bash
    $ sensu-install -e sensu-extensions-system-profile-wmi
    ```

2. Configure Sensu to load the extension, as [documented here][0].

    ``` json
    {
      "extensions": {
        "system-profile-wmi": {
          "gem": "sensu-extensions-system-profile-wmi"
        }
      }
    }
    ```

## Configuration

`/etc/sensu/conf.d/system_profile.json`:

``` json
{
  "wmi_metrics": {
    "interval": 10,
    "handler": "graphite",
    "add_client_prefix": true,
    "path_prefix": "system",
    "prefix_at_start": true
  }
}
```

[0]: https://sensuapp.org/docs/latest/reference/extensions.html
