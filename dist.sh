mkdir -p dist/demo-repository/main
helm template -f charts/demo-repository/main/values.yaml charts/demo-repository/main/ > dist/demo-repository/main/out.yaml
