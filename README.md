# Docker Image for yamllint

Using yamllint Python module from <https://github.com/adrienverge/yamllint>.

[yamllint documentation](https://yamllint.readthedocs.io/)

## Usage

### Docker Run

```bash
docker run --rm -it -v $(pwd):/data registry.gitlab.com/jeff_cook/yamllint:latest yamllint .
```

### GitLab CI Include

With GitLab CI you can include a pipeline file.
Make sure you have added the `pre_build` stage to your pipeline.

```yaml
include:
  - project: 'jeff_cook/yamllint'
    ref: master
    file: '/.gitlab-ci/.gitlab-ci.yml'

stages:
  - pre_build
```
