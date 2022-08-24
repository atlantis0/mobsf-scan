FROM opensecurity/mobsfscan:v0.1.1

LABEL com.github.actions.name="GitHub Action for MobSF Scan"
LABEL com.github.actions.description="Wraps the MobSF scan docker to enable common commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="gray-dark"

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]