FROM opensuse/leap:42.3 AS builder

LABEL maintainer=felix.schumacher@internetallee.de
RUN zypper --non-interactive install make gcc-fortran
WORKDIR /build
ADD *.f90 Makefile ./
RUN make

FROM opensuse/leap:42.3

LABEL maintainer=felix.schumacher@internetallee.de
RUN zypper --non-interactive install libgfortran3
WORKDIR /app
COPY --from=builder /build/app ./
CMD ["./app"]
