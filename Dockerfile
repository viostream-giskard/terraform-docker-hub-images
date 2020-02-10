FROM hashicorp/terraform:0.12.20
LABEL MAINTAINER="Stuart Auld <stuart.auld@viostream.com>"

ENV SNOWFLAKE_PROVIDER_VERSION=0.10.0

RUN \
    mkdir -p /root/.terraform.d/plugins/ \
    && wget -q -O snowflake.tgz https://github.com/chanzuckerberg/terraform-provider-snowflake/releases/download/v$SNOWFLAKE_PROVIDER_VERSION/terraform-provider-snowflake_${SNOWFLAKE_PROVIDER_VERSION}_linux_amd64.tar.gz \
    && tar -C /root/.terraform.d/plugins/ -zxf snowflake.tgz \
    && rm snowflake.tgz
asdasd
