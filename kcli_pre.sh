{% if rhnuser|default(config_rhnuser) != None and rhnpassword|default(config_rhnpassword) != None and rhnorg|default(config_rhnorg) != None and rhnactivationkey|default(config_rhnactivationkey) == None %}
echo "Rhn credentials are not specified" && exit 1
{% endif %}
echo "A valid rhn pool with a Satellite key is required"
