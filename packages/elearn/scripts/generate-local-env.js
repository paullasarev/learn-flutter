const internalIp = require('internal-ip');
const fs = require('fs');

const ip = internalIp.v4.sync();

const env = `LOCAL_IP=${ip}`
const name = '.env';

fs.writeFileSync(name, env);

console.log(name);
console.log(env);
