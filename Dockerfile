FROM opensecurity/mobsfscan:0.1.1
# FROM alpine
# RUN apk add --no-cache jq

LABEL com.github.actions.name="GitHub Action for MobSF Scan"
LABEL com.github.actions.description="Wraps the MobSF scan docker to enable common commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="gray-dark"

COPY "entrypoint.sh" "/entrypoint.sh"
RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["bash", "/entrypoint.sh"]
CMD ["--help"]