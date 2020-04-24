push_major:
	bump2version major
	git push
	git push --tags

push_minor:
	bump2version minor
	git push
	git push --tags

push_patch:
	bump2version patch
	git push
	git push --tags
