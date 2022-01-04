# An explanation of my media docker compose

I use a trueNAS box to host my storage (looking into moving to openstack, if you have experience or tips please let me know) there are 2 RAIDs setup on the box one of them is the primary/prod RAID hosting media, configs and data and the other is a backup RAID. Everything except the media is backed up regularly using a CRON job so the primary RAID is ideal for me to use for configs and data. 

That is why there are so many NFS volumes setup as I currently don't have a better way to make sure that the system is backed up correctly and I know this works.
