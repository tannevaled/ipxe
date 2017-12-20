sed -i '/#define ETH_P_AOE/a \
#define ETH_P_LLDP      0x88CC   /* Link Layer Discovery Protocol */' ipxe/src/include/ipxe/if_ether.h
cat ipxe/src/include/ipxe/if_ether.h
sed -i '/#define ERRFILE_httpntlm/a \
#define ERRFILE_lldp      ( ERRFILE_NET | 0x004b0000 )'               ipxe/src/include/ipxe/errfile.h
#sed -i '/#define	NET_PROTO_LACP/a \
#define NET_PROTO_LLDP          /* LLDP protocol */'                 ipxe/src/config/general.h
cat ipxe/src/config/general.h
sed -i '$ a \
#ifdef NET_PROTO_LLDP\nREQUIRE_OBJECT ( lldp );\n#endif'              ipxe/src/config/config_ethernet.c
cat ipxe/src/config/config_ethernet.c
sed -i '/#define SETTING_MISC/a \
#define SETTING_LLDP               19 /**< LLDP settings */'          ipxe/src/include/ipxe/settings.h
cat ipxe/src/include/ipxe/settings.h
sed -i '/#define DHCP_EB_FEATURE_NFS/a \
#define DHCP_EB_FEATURE_LLDP 0x30 /**< LLDP protocol */'              ipxe/src/include/ipxe/features.h
cat ipxe/src/include/ipxe/features.h

echo "#define NET_PROTO_LLDP        /* LLDP protocol */"    >> ipxe/src/config/local/general.h
echo "#define LLDP_CMD              /* LLDP commands */"    >> ipxe/src/config/local/general.h
echo "#define VLAN_CMD              /* VLAN commands */"    >> ipxe/src/config/local/general.h
echo "#define PING_CMD              /* Ping command */"     >> ipxe/src/config/local/general.h
echo "#define PCI_CMD               /* PCI commands */"     >> ipxe/src/config/local/general.h
