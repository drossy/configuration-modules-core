object template horizon;

include 'components/openstack/schema';

bind "/metaconfig/contents/horizon" = openstack_horizon_config;

"/metaconfig/module" = "horizon";

prefix "/metaconfig/contents/horizon";

"allowed_hosts" = list('*');
"openstack_keystone_url" = 'http://controller.mysite.com:5000/v3';
"caches/default" = dict(
    "location", 'controller.mysite.com:11211',
);
"openstack_keystone_multidomain_support" = true;
"time_zone" = "Europe/Brussels";
"secret_key" = "d5ae8703f268f0effff111";
