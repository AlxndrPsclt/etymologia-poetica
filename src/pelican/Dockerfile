FROM python:3.6.6

WORKDIR /usr/src/app/

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get install -y \
	locales \
	&& rm -rf /var/lib/apt/lists/*

RUN sed -i -e 's/# fr_FR.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/' /etc/locale.gen && dpkg-reconfigure --frontend=noninteractive locales
ENV LC_ALL fr_FR.utf-8

COPY ssh_config /root/.ssh/config

RUN mkdir -p /usr/src/init
COPY pelican-entrypoint.sh /usr/src/init/

CMD ["python", "-m", "pelican.server", "-v"]
