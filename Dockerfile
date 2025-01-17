FROM python:latest
ENV VIRTUAL_ENV "/venv"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"
RUN apt-get update && apt-get upgrade -y
RUN python -m pip install --upgrade pip
RUN git clone https://github.com/draculacoders/Anime-Downloader.git
RUN cd Anime-Downloader
WORKDIR /Anime-Downloader
CMD python -m pip install --no-cache-dir -r requirements.txt
CMD python3 hypefile.py
