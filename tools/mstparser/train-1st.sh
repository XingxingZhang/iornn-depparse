DATA_PATH=../../data/wsj-dep/universal/data
OUTPUT_PATH=experiment

java -classpath ".:lib/trove.jar" -Xmx32g -Djava.io.tmpdir=./ \
	mstparser.DependencyParser \
	train train-file:$DATA_PATH/train.conll training-k:5 order:1 loss-type:nopunc iters:10 \
	model-name:$OUTPUT_PATH/wsj-univ-1storder.model \
	test test-file:$DATA_PATH/dev.conll testing-k:1 output-file:$OUTPUT_PATH/dev-mst1storder.conll \
	eval gold-file:$DATA_PATH/dev.conll 
