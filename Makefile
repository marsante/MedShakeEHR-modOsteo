default:
	zip -r MedShakeEHR-modOsteo.zip . -x "*.git*" -x "Makefile"
	
clean:
	rm -f MedShakeEHR-modOsteo.zip


sha256:
	git ls-files > filelist.txt	
	zip -@ MedShakeEHR-modOsteo.zip < filelist.txt
	tar -czf MedShakeEHR-modOsteo.tar.gz -T filelist.txt
	rm -f filelist.txt
	sha256sum MedShakeEHR-modOsteo.zip > SHA256SUMS
	sha256sum MedShakeEHR-modOsteo.tar.gz >> SHA256SUMS
	@echo "SHA256 (MedShakeEHR-modOsteo.zip): $$(sha256sum MedShakeEHR-modOsteo.zip | cut -d' ' -f1)"
	@echo "SHA256 (MedShakeEHR-modOsteo.tar.gz): $$(sha256sum MedShakeEHR-modOsteo.tar.gz | cut -d' ' -f1)"
	rm -f MedShakeEHR-modOsteo.zip MedShakeEHR-modOsteo.tar.gz 
