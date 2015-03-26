FROM ruby:2.2.0-onbuild

RUN rm /etc/localtime && ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime

CMD ["unicorn", "-Ilib", "-E production"]
