[ml2]
type_drivers = flat,vlan
tenant_network_types = vlan
{{- if .Values.networkPlugins.linux_bridge.enabled }}
mechanism_drivers = linuxbridge
{{- else if .Values.networkPlugins.ovs.enabled }}
mechanism_drivers = openvswitch
{{- end }}
extension_drivers = port_security

[securitygroup]
enable_security_group = true

[ml2_type_vlan]
network_vlan_ranges = physnet1

[ml2_type_flat]
flat_networks = physnet1
