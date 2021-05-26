FROM alpine/helm:2.16.0

LABEL version="0.1.0"
LABEL repository="https://github.com/yeapAi/helm-check-action"
LABEL maintainer="Nicolas L"

LABEL com.github.actions.name="GitHub Action for Helm Templates Validation"
LABEL com.github.actions.description="Checks if helm templates are valid"
LABEL com.github.actions.icon="cloud"
LABEL com.github.actions.color="blue"

RUN apk add --no-cache bash

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["bash", "/entrypoint.sh"]

