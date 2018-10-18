all:
	make -C Splitter
	make -C Expander
	make -C Ranker
	make -C Results
	make -C Tiler
