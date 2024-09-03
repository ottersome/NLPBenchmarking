
.PHONY: all
all: run

.PHONY: install
install:
	poetry install

install_pip:
	pip install -r requirements.txt

run:
	poetry run python ./ragas_entry_point.py

list_instances:
	sh ./scripts/cur_instances.sh
stop_instances:
	sh ./scripts/stop_instances.sh
start_and_sync:
	sh ./scripts/start_and_sync.sh

clean:
	# TODO: 
	echo "TODO: not yet implemented"
