# FROM opensecurity/mobsfscan:0.1.1
FROM ubuntu:20.04

LABEL com.github.actions.name="GitHub Action for MobSF Scan"
LABEL com.github.actions.description="Wraps the MobSF scan docker to enable common commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="gray-dark"

COPY "entrypoint.sh" "/entrypoint.sh"
RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]