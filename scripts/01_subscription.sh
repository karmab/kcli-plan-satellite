POOL_ID=$(subscription-manager list --all --available --matches 'Red Hat Satellite Infrastructure Subscription' | grep 'Pool ID:' | head -1 | cut -d: -f2 | xargs)
subscription-manager attach --pool=$POOL_ID
subscription-manager repos --enable=rhel-7-server-rpms --enable=rhel-7-server-satellite-{{ version }}-rpms --enable=rhel-7-server-satellite-maintenance-6-rpms --enable=rhel-server-rhscl-7-rpms --enable=rhel-7-server-ansible-2.9-rpms
