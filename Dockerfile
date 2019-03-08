FROM opensuse/leap:42.3
WORKDIR /app
ADD run.sh .
RUN chmod +x run.sh
CMD run.sh
