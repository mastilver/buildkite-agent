FROM node:10 as node

FROM buildkite/agent

ENV BUILDKITE_AGENT_TAGS="node=10"

COPY --from=node /usr/local/bin/npm /usr/local/bin/node
COPY --from=node /usr/local/bin/npm /usr/local/bin/npm
