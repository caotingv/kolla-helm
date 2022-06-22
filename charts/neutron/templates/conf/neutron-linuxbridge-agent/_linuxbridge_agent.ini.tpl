[agent]

[linux_bridge]
physical_interface_mappings = physnet1:{{ .Values.networkPlugins.linux_bridge.external_interface }}

[securitygroup]
firewall_driver = neutron.agent.linux.iptables_firewall.IptablesFirewallDriver

[vxlan]
enable_vxlan = False
