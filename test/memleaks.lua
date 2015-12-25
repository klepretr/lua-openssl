local openssl = require'openssl'
EXPORT_ASSERT_TO_GLOBALS = true
require'luaunit'

io.read()

openssl.rand_load()

--dofile('0.engine.lua')

--dofile('0.misc.lua')
--dofile('1.asn1.lua')
--dofile('2.asn1.lua')
--[[
dofile('1.x509_name.lua')
dofile('1.x509_extension.lua')
dofile('1.x509_attr.lua')
dofile('2.digest.lua')
dofile('2.hmac.lua')
dofile('3.cipher.lua')
dofile('4.pkey.lua')
dofile('5.x509_req.lua')
dofile('5.x509_crl.lua')
dofile('5.x509.lua')
--dofile('5.ts.lua')
dofile('6.pkcs7.lua')
dofile('7.pkcs12.lua')
dofile('8.ssl_options.lua')
--]]
dofile('rsa.lua')
dofile('ec.lua')

LuaUnit:setVerbosity(0)
for i=1, 1024000 do
v = {openssl.version(true)}
print(openssl.version())

LuaUnit:run()
--print(openssl.error(true))
collectgarbage()
end
