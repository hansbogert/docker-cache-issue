FROM ubuntu:20.04 AS x
RUN touch foobar

FROM debian:10
COPY --from=x foobar foobar
