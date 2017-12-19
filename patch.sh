sed -i '/#define ETH_P_AOE/a #define ETH_P_LLDP 0x88CC  /* Link Layer Discovery Protocol */' ipxe/src/include/ipxe/if_ether.h
sed -i '/#define ERRFILE_httpntlm/a #define ERRFILE_lldp        ERRFILE_NET | 0x004b0000 )'  ipxe/src/include/ipxe/errfile.h
sed -i '/#undef    NET_PROTO_FCOE/a #undef      NET_PROTO_LLDP          /* LLDP protocol */' ipxe/src/config/general.h
sed -i '$ a #ifdef NET_PROTO_LLDP\nREQUIRE_OBJECT ( lldp );\n#endif'                         ipxe/src/config/config_ethernet.c
sed -i '/#define SETTING_MISC/a #define SETTING_LLDP               19 /**< LLDP settings */' ipxe/src/include/ipxe/settings.h
