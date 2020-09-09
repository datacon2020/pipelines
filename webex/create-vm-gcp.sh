#!/bin/bash
## -------- RDP 1 --------

## Create VM
gcloud beta compute instances create rdp1 \
--zone=asia-east1-b --machine-type=e2-highcpu-4 \
--network=default --network-tier=PREMIUM \
--maintenance-policy=MIGRATE \
--no-service-account --no-scopes \
--image=windows-server-2019-dc-v20200813 \
--image-project=windows-cloud \
--boot-disk-size=50GB \
--boot-disk-type=pd-standard \
--boot-disk-device-name=rdp1 \
--no-shielded-secure-boot \
--shielded-vtpm \
--shielded-integrity-monitoring \
--reservation-affinity=any

sleep 60
## Get reset RDP username / password
yes | gcloud beta compute reset-windows-password "rdp1" --zone "asia-east1-b" --user webex

## -------- RDP 2 --------

## Create VM
gcloud beta compute instances create rdp2 \
--zone=asia-east1-b --machine-type=e2-highcpu-4 \
--network=default --network-tier=PREMIUM \
--maintenance-policy=MIGRATE \
--no-service-account --no-scopes \
--image=windows-server-2019-dc-v20200813 \
--image-project=windows-cloud \
--boot-disk-size=50GB \
--boot-disk-type=pd-standard \
--boot-disk-device-name=rdp2 \
--no-shielded-secure-boot \
--shielded-vtpm \
--shielded-integrity-monitoring \
--reservation-affinity=any

sleep 60
## Get reset RDP username / password
yes | gcloud beta compute reset-windows-password "rdp2" --zone "asia-east1-b" --user webex

## -------- RDP 3 --------

## Create VM
gcloud beta compute instances create rdp3 \
--zone=asia-east1-b --machine-type=e2-highcpu-4 \
--network=default --network-tier=PREMIUM \
--maintenance-policy=MIGRATE \
--no-service-account --no-scopes \
--image=windows-server-2019-dc-v20200813 \
--image-project=windows-cloud \
--boot-disk-size=50GB \
--boot-disk-type=pd-standard \
--boot-disk-device-name=rdp3 \
--no-shielded-secure-boot \
--shielded-vtpm \
--shielded-integrity-monitoring \
--reservation-affinity=any

sleep 60
## Get reset RDP username / password
yes | gcloud beta compute reset-windows-password "rdp3" --zone "asia-east1-b" --user webex

## -------- RDP 4 --------

## Create VM
gcloud beta compute instances create rdp4 \
--zone=asia-east1-b --machine-type=e2-highcpu-4 \
--network=default --network-tier=PREMIUM \
--maintenance-policy=MIGRATE \
--no-service-account --no-scopes \
--image=windows-server-2019-dc-v20200813 \
--image-project=windows-cloud \
--boot-disk-size=50GB \
--boot-disk-type=pd-standard \
--boot-disk-device-name=rdp4 \
--no-shielded-secure-boot \
--shielded-vtpm \
--shielded-integrity-monitoring \
--reservation-affinity=any

sleep 60
## Get reset RDP username / password
yes | gcloud beta compute reset-windows-password "rdp4" --zone "asia-east1-b" --user webex

## -------- RDP 5 --------

## Create VM
gcloud beta compute instances create rdp5 \
--zone=asia-east1-b --machine-type=e2-highcpu-4 \
--network=default --network-tier=PREMIUM \
--maintenance-policy=MIGRATE \
--no-service-account --no-scopes \
--image=windows-server-2019-dc-v20200813 \
--image-project=windows-cloud \
--boot-disk-size=50GB \
--boot-disk-type=pd-standard \
--boot-disk-device-name=rdp5 \
--no-shielded-secure-boot \
--shielded-vtpm \
--shielded-integrity-monitoring \
--reservation-affinity=any

sleep 60
## Get reset RDP username / password
yes | gcloud beta compute reset-windows-password "rdp5" --zone "asia-east1-b" --user webex

## -------- RDP 6 --------

## Create VM
gcloud beta compute instances create rdp6 \
--zone=asia-east1-b --machine-type=e2-highcpu-4 \
--network=default --network-tier=PREMIUM \
--maintenance-policy=MIGRATE \
--no-service-account --no-scopes \
--image=windows-server-2019-dc-v20200813 \
--image-project=windows-cloud \
--boot-disk-size=50GB \
--boot-disk-type=pd-standard \
--boot-disk-device-name=rdp6 \
--no-shielded-secure-boot \
--shielded-vtpm \
--shielded-integrity-monitoring \
--reservation-affinity=any

sleep 60
## Get reset RDP username / password
yes | gcloud beta compute reset-windows-password "rdp6" --zone "asia-east1-b" --user webex