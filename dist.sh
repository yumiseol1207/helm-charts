helm template --set image.tag=$IMAGE_TAG -f demo-repository/${{ env.CHART_BRANCH }}/values.yaml demo-repository/${{ env.CHART_BRANCH }}/ > dist/demo-repository/${{ env.CHART_BRANCH }}/out.yaml
