# docker exec -it my_container bash

FROM 	phusion/baseimage


		# update system
RUN 	apt-get update -qq \

		# install python3
 	&&	apt-get install -y --no-install-recommends \
		nano tree curl git man wget \
		python3 python3-dev python3-pip python3-setuptools \

		# telegram bot
	&&	pip3 install --no-cache-dir \
		python-telegram-bot feedparser --upgrade \

        # PosgreSQL
		# python3-psycopg2 \
		py-postgresql \

		# Clean up APT when done.
	&&  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
