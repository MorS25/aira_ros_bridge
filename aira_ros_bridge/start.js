if (process.argv.length < 3) {
    console.log("Usage: " + process.argv[0] + " " + process.argv[1] + " CONTRACT_ADDRESS BRIDGE_PORT");
} else {
    if (typeof(process.argv[3]) === 'undefined')
        process.argv[3] = '9090';
    require('./lib/aira_bridge')(process.argv[2], process.argv[3])
}
