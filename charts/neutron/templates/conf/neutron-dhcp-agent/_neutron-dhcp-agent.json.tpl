{
    "command": "neutron-dhcp-agent --config-file /etc/neutron/neutron.conf --config-file /etc/neutron/dhcp_agent.ini",
    "config_files": [
        {
            "source": "/var/lib/kolla/config_files/neutron.conf",
            "dest": "/etc/neutron/neutron.conf",
            "owner": "neutron",
            "perm": "0600"
        },
        {
            "source": "/var/lib/kolla/config_files/dhcp_agent.ini",
            "dest": "/etc/neutron/dhcp_agent.ini",
            "owner": "neutron",
            "perm": "0600"
        },
        {
            "source": "/var/lib/kolla/config_files/dnsmasq.conf",
            "dest": "/etc/neutron/dnsmasq.conf",
            "owner": "neutron",
            "perm": "0600"
        }
    ],
    "permissions": [
        {
            "path": "/var/log/kolla/neutron",
            "owner": "neutron:neutron",
            "recurse": true
        },
        {
            "path": "/var/lib/neutron/kolla",
            "owner": "neutron:neutron",
            "recurse": true
        }
    ]
}
