[DEFAULT]
{{- if .Values.networkPlugins.linux_bridge.enabled }}
interface_driver = linuxbridge
{{- else if .Values.networkPlugins.ovs.enabled }}
interface_driver = openvswitch
{{- end }}
dnsmasq_config_file = /etc/neutron/dnsmasq.conf
dhcp_driver = neutron.agent.linux.dhcp.Dnsmasq
enable_isolated_metadata = true
force_metadata = true
dnsmasq_dns_servers = 1.1.1.1,8.8.8.8,8.8.4.4
