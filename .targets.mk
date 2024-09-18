# draft-ietf-dult-threat-model
# draft-delano-dult-threat-model-00 draft-ietf-dult-threat-model-00
versioned:
	@mkdir -p $@
.INTERMEDIATE: versioned/draft-ietf-dult-threat-model-00.md
.SECONDARY: versioned/draft-ietf-dult-threat-model-00.xml
versioned/draft-ietf-dult-threat-model-00.md: | versioned
	git show "draft-ietf-dult-threat-model-00:draft-ietf-dult-threat-model.md" | sed -e 's/draft-ietf-dult-threat-model-latest/draft-ietf-dult-threat-model-00/g' >$@
.INTERMEDIATE: versioned/draft-ietf-dult-threat-model-01.md
versioned/draft-ietf-dult-threat-model-01.md: draft-ietf-dult-threat-model.md | versioned
	sed -e 's/draft-ietf-dult-threat-model-latest/draft-ietf-dult-threat-model-01/g' $< >$@
diff-draft-ietf-dult-threat-model.html: versioned/draft-ietf-dult-threat-model-00.txt versioned/draft-ietf-dult-threat-model-01.txt
	-$(iddiff) $^ > $@
