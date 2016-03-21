/* Parse arguments */
var contact_address, rpc_port, bridge_port;
contact_address = typeof(process.argv[2]) === 'undefined' ? '' : process.argv[2];
rpc_port    = typeof(process.argv[3]) === 'undefined' ? '8545' : process.argv[3];
bridge_port = typeof(process.argv[4]) === 'undefined' ? '9090' : process.argv[4];
/* Empty arguments */
if (contact_address == '') {
    console.log("Usage: " + process.argv[0] + " " + process.argv[1] + " CONTRACT_ADDRESS RPC_PORT BRIDGE_PORT");
    return 1;
}
/* RUN */
require('./lib/aira_bridge')(contact_address, rpc_port, bridge_port)
