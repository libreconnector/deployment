# Cache local charts for the libreconnector templates
helm dep update

# Add bitnami (reliable source for many external charts)
helm repo add bitnami https://charts.bitnami.com/bitnami

# Install a release in a new namespace.
helm upgrade --install -n libreconnector dsp-poc \
    --create-namespace \
    -f values.external.yaml \
    -f values.yaml . 