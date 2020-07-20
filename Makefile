default:
	zip -r MedShakeEHR-modOsteo.zip . -x .git\* -x Makefile

clean:
	rm -f MedShakeEHR-modOsteo.zip
