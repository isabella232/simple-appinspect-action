# Simple App Inspect API GitHub Action

Simple GitHub action to validation a Splunk app package using AppInspect API. This action uses the [Splunkbase AppInspect API](https://dev.splunk.com/enterprise/docs/developapps/testvalidate/appinspect/runappinspectrequestsapi).

There is also an [GitHub action using the AppInspect CLI](https://github.com/splunk/appinspect-cli-action).

## Example Usage

```yaml
jobs:
  appinspect-job:
    runs-on: ubuntu-latest
    steps:
      # ...
      - uses: splunk/simple-appinspect-action@main
        with:
          username: ${{ secrets.SPL_COM_USER }}
          password: ${{ secrets.SPL_COM_PASSWORD }}
          app_path: build/package/
          tags: "cloud, self-service" 
```

## Inputs

| Name       | Description                                                                  | Notes        | Default |
|------------|------------------------------------------------------------------------------|--------------|---------|
| `username` | Splunk.com user used to login to the appinspect API                          | **required** |         |
| `password` | Splunk.com password used to login to the appinspect API                      | **required** |         |
| `app_path` | Path to the directory where addon is located, without filename               | **required** |         |
| `tags`     | Comma separated list of [tags](#reference-docs) to include in appinspect job |              | None    |
| `retries`  | Number of retries in case of failed requests                                 |              | 3       |

### Reference Docs

For more info on check critera, tags and the API see the [Splunk AppInspect reference](https://dev.splunk.com/enterprise/reference/appinspect).