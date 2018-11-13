FROM python:3.6.6

WORKDIR /usr/src/app/output

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get install -y locales
RUN sed -i -e 's/# fr_FR.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/' /etc/locale.gen && dpkg-reconfigure --frontend=noninteractive locales
ENV LC_ALL fr_FR.utf-8

CMD ["python", "-m", "pelican.server", "-v"]
