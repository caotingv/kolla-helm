{
    "command": "/tmp/db-sync.sh",
    "config_files": [
        {
            "source": "/var/lib/kolla/config_files/neutron.conf",
            "dest": "/etc/neutron/neutron.conf",
            "owner": "neutron",
            "perm": "0600"
        },
        {
            "source": "/var/lib/kolla/config_files/ml2_conf.ini",
            "dest": "/etc/neutron/plugins/ml2/ml2_conf.ini",
            "owner": "neutron",
            "perm": "0600"
        }
    ],
    "permissions": [
        {
            "path": "/var/log/kolla",
            "owner": "neutron:kolla"
        },
        {
            "path": "/var/log/kolla/neutron/neutron.log",
            "owner": "neutron:neutron"
        }
    ]
}
