export ORG="{{ organization }}"
export LOCATION="{{ location }}"
export ADMIN_USER="{{ admin_user }}"
export ADMIN_PASSWORD="{{ admin_password }}"
export DOMAIN="{{ domain }}"
#yum-y update
yum -y install satellite tfm-rubygem-hammer_cli
echo $(hostname -I) $(hostname -s).$DOMAIN $(hostname -s) >> /etc/hosts
satellite-installer --scenario satellite --foreman-initial-admin-username ${ADMIN_USER} --foreman-initial-admin-password ${ADMIN_PASSWORD} --foreman-initial-location ${LOCATION} --foreman-initial-organization ${ORG}
