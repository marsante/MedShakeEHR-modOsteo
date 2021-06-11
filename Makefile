default:
	rm -f MedShakeEHR-modOsteo.zip SHA256SUMS
	zip -r MedShakeEHR-modOsteo.zip . -x .git\* -x Makefile
	sha256sum -b MedShakeEHR-modOsteo.zip > preSHA256SUMS
	head -c 64 preSHA256SUMS > SHA256SUMS
	rm -f preSHA256SUMS

clean:
	rm -f MedShakeEHR-modOsteo.zip
