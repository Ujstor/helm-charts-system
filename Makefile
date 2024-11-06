all: ur clean package index
	@echo "Packaging complete and index.yaml updated."

CHARTS := cert-manager cilium nginx

REPO_URL := https://Ujstor.github.io/helm-charts-system

package: $(CHARTS)

$(CHARTS):
	@echo "Packaging $@ chart..."
	# @helm dependency update $@
	helm package $@ --destination .
index: package
	@echo "Generating index.yaml..."
	helm repo index . --url $(REPO_URL)

clean:
	@echo "Cleaning up old packages..."
	rm -f *.tgz index.yaml

hdi helm-docs:
	@if -v helm-docs > /dev/null 2>&1; then \
		echo "installing helm-docs"; \
		go install github.com/norwoodj/helm-docs/cmd/helm-docs@latest; \
	else \
		echo "helm-docs allready installed"; \
	fi

d docs:
	@echo "Generating helm-docs for charts..."
	@find . -type f -name "Chart.yaml" -exec sh -c ' \
		dir="$$(dirname "{}")"; \
		echo "Generating docs for $$dir"; \
		helm-docs "$$dir" > "$$dir/README.md" \
	' \;
	@echo "Documentation generation complete!"


ur update-readme: docs
	@echo "Updating root README.md with charts READMEs and custom separators..."
	@echo "# K8s System related Helm Charts" > README.md
	@echo >> README.md
	@echo "Helm chart collection that simplifies Kubernetes configuration to be production-ready." >> README.md
	@echo >> README.md
	@for readme in $$(find . -type f -name "README.md" | sort); do \
		echo >> README.md; \
		cat $$readme >> README.md; \
		echo >> README.md; \
		echo "![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)" >> README.md; \
		echo >> README.md; \
	done
	@: > tmp.md
	@head -n -6 README.md >> tmp.md
	@mv tmp.md README.md
	@echo "Root README.md updated with custom separators!"

.PHONY: d docs hdi helm-docs ur update-readme package $(CHARTS) index clean all
