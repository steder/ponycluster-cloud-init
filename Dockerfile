FROM debian:10

# NOTE: hacky little dockerfile just to confirm these scripts work
# Don't do this in a real dockerfile as it won't benefit from any layer caching.

COPY scripts/per-instance/* /var/lib/cloud/scripts/per-instance/

RUN bash /var/lib/cloud/scripts/per-instance/install-packages.sh
#RUN bash /var/lib/cloud/scripts/per-instance/setup.sh
