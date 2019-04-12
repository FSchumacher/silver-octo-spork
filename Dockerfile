FROM busybox

LABEL maintainer=felix.schumacher@internetallee.de
WORKDIR /app
ADD app /app/app
CMD ["/app/app"]
