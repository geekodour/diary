.PHONY: export # Export org-md and org-html files
export: export-org

.PHONY: export-org # Export .org files to .md
export-org:
	@echo "export-org starting"
	@emacsclient -e '(cf/hugo-export-all "$(PWD)/content-org")'
	@echo "export-org finished"

include $(HOME)/infra/workshop/common/Makefile.common
