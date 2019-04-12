FROM busybox

LABEL maintainer=felix.schumacher@internetallee.de
WORKDIR /app
ADD app /app/app
RUN chmod +x /app/app
CMD ["/app/app"]
