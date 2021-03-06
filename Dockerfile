FROM tiangolo/nginx-rtmp:latest

LABEL maintainer="MightyDetail <mightydetail@gmail.com>"

# Install stunnel
RUN apt-get update && \
    apt-get install -y stunnel4
    
# Set up config file
COPY stunnel.conf /etc/stunnel/stunnel.conf
COPY fb.conf /etc/stunnel/conf.d/fb.conf

CMD ["stunnel4"]
