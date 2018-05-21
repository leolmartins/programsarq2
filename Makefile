
all:
	echo "\n===\n BUILDING PROGRAMS \n===\n"
	$(MAKE) -C ./emfloat all
	$(MAKE) -C ./fp-convert all
	$(MAKE) -C ./trisolv all
	$(MAKE) -C ./tiffdither all && cp ./tiffdither/consumer_tiffdither/src/_finfo_dataset ../
	cd mb2_vid_jpg2000 && cd jpg2000enc && cd jasper-1.701.0 && ./configure && $(MAKE) all
	echo "\n===\n BUILD FINISHED \n===\n\n===\n EXECUTING PROGRAMS ON GEM5 \n===\n"
	
