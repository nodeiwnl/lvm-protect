-- Settings
local Signature = [[
--= This script was obfuscated with Nodet Obfuscator v1.0.0 =--
--= VM-Hash: variable:vmhash =--
]]

-- "Fast" functions
local insert = table.insert
local concat = table.concat
local byte = string.byte
local random = math.random
local tostr = tostring

-- MD5
local MD5;do local b,c,d,e,f=string.char,string.byte,string.format,string.rep,string.sub;local g,h,i,j,k,l;local m,n=pcall(require,'bit')if m then g,h,i,j,k,l=n.bor,n.band,n.bnot,n.bxor,n.rshift,n.lshift else m,n=pcall(require,'bit32')if m then i=n.bnot;local o=function(p)return p<=0x7fffffff and p or-(i(p)+1)end;local q=function(r)return function(s,t)return o(r(o(s),o(t)))end end;g,h,j=q(n.bor),q(n.band),q(n.bxor)k,l=q(n.rshift),q(n.lshift)else local function u(v)local w=0;local x=1;for y=1,#v do w=w+v[y]*x;x=x*2 end;return w end;local function z(A,B)local C,D=A,B;if#C<#D then C,D=D,C end;for y=#D+1,#C do D[y]=0 end end;local E;i=function(p)local v=E(p)local F=math.max(#v,32)for y=1,F do if v[y]==1 then v[y]=0 else v[y]=1 end end;return u(v)end;E=function(p)if p<0 then return E(i(math.abs(p))+1)end;local v={}local G=1;local H;while p>0 do H=p%2;v[G]=H;p=(p-H)/2;G=G+1 end;return v end;g=function(I,p)local J=E(I)local K=E(p)z(J,K)local v={}for y=1,#J do if J[y]==0 and K[y]==0 then v[y]=0 else v[y]=1 end end;return u(v)end;h=function(I,p)local J=E(I)local K=E(p)z(J,K)local v={}for y=1,#J do if J[y]==0 or K[y]==0 then v[y]=0 else v[y]=1 end end;return u(v)end;j=function(I,p)local J=E(I)local K=E(p)z(J,K)local v={}for y=1,#J do if J[y]~=K[y]then v[y]=1 else v[y]=0 end end;return u(v)end;k=function(p,L)local M=0;if p<0 then p=i(math.abs(p))+1;M=0x80000000 end;local N=math.floor;for y=1,L do p=p/2;p=g(N(p),M)end;return N(p)end;l=function(p,L)if p<0 then p=i(math.abs(p))+1 end;for y=1,L do p=p*2 end;return h(p,0xFFFFFFFF)end end end;local function O(y)local r=function(P)return b(h(k(y,P),255))end;return r(0)..r(8)..r(16)..r(24)end;local function Q(P)local R=0;for y=1,#P do R=R*256+c(P,y)end;return R end;local function S(P)local R=0;for y=#P,1,-1 do R=R*256+c(P,y)end;return R end;local function T(P,...)local U,V=1,{}local W={...}for y=1,#W do table.insert(V,S(f(P,U,U+W[y]-1)))U=U+W[y]end;return V end;local X=function(Y)return Q(O(Y))end;local function Z(_)return b(tonumber(_,16))end;local function a0(a1)local w,a2=a1:gsub('..',Z)return w end;local a3={0xd76aa478,0xe8c7b756,0x242070db,0xc1bdceee,0xf57c0faf,0x4787c62a,0xa8304613,0xfd469501,0x698098d8,0x8b44f7af,0xffff5bb1,0x895cd7be,0x6b901122,0xfd987193,0xa679438e,0x49b40821,0xf61e2562,0xc040b340,0x265e5a51,0xe9b6c7aa,0xd62f105d,0x02441453,0xd8a1e681,0xe7d3fbc8,0x21e1cde6,0xc33707d6,0xf4d50d87,0x455a14ed,0xa9e3e905,0xfcefa3f8,0x676f02d9,0x8d2a4c8a,0xfffa3942,0x8771f681,0x6d9d6122,0xfde5380c,0xa4beea44,0x4bdecfa9,0xf6bb4b60,0xbebfbc70,0x289b7ec6,0xeaa127fa,0xd4ef3085,0x04881d05,0xd9d4d039,0xe6db99e5,0x1fa27cf8,0xc4ac5665,0xf4292244,0x432aff97,0xab9423a7,0xfc93a039,0x655b59c3,0x8f0ccc92,0xffeff47d,0x85845dd1,0x6fa87e4f,0xfe2ce6e0,0xa3014314,0x4e0811a1,0xf7537e82,0xbd3af235,0x2ad7d2bb,0xeb86d391,0x67452301,0xefcdab89,0x98badcfe,0x10325476}local r=function(a4,a5,a6)return g(h(a4,a5),h(-a4-1,a6))end;local a7=function(a4,a5,a6)return g(h(a4,a6),h(a5,-a6-1))end;local a8=function(a4,a5,a6)return j(a4,j(a5,a6))end;local y=function(a4,a5,a6)return j(a5,g(a4,-a6-1))end;local a6=function(a9,s,t,aa,ab,a4,P,ac)s=h(s+a9(t,aa,ab)+a4+ac,0xFFFFFFFF)return g(l(h(s,k(0xFFFFFFFF,P)),P),k(s,32-P))+t end;local function ad(ae,af,ag,ah,ai)local s,t,aa,ab=ae,af,ag,ah;local aj=a3;s=a6(r,s,t,aa,ab,ai[0],7,aj[1])ab=a6(r,ab,s,t,aa,ai[1],12,aj[2])aa=a6(r,aa,ab,s,t,ai[2],17,aj[3])t=a6(r,t,aa,ab,s,ai[3],22,aj[4])s=a6(r,s,t,aa,ab,ai[4],7,aj[5])ab=a6(r,ab,s,t,aa,ai[5],12,aj[6])aa=a6(r,aa,ab,s,t,ai[6],17,aj[7])t=a6(r,t,aa,ab,s,ai[7],22,aj[8])s=a6(r,s,t,aa,ab,ai[8],7,aj[9])ab=a6(r,ab,s,t,aa,ai[9],12,aj[10])aa=a6(r,aa,ab,s,t,ai[10],17,aj[11])t=a6(r,t,aa,ab,s,ai[11],22,aj[12])s=a6(r,s,t,aa,ab,ai[12],7,aj[13])ab=a6(r,ab,s,t,aa,ai[13],12,aj[14])aa=a6(r,aa,ab,s,t,ai[14],17,aj[15])t=a6(r,t,aa,ab,s,ai[15],22,aj[16])s=a6(a7,s,t,aa,ab,ai[1],5,aj[17])ab=a6(a7,ab,s,t,aa,ai[6],9,aj[18])aa=a6(a7,aa,ab,s,t,ai[11],14,aj[19])t=a6(a7,t,aa,ab,s,ai[0],20,aj[20])s=a6(a7,s,t,aa,ab,ai[5],5,aj[21])ab=a6(a7,ab,s,t,aa,ai[10],9,aj[22])aa=a6(a7,aa,ab,s,t,ai[15],14,aj[23])t=a6(a7,t,aa,ab,s,ai[4],20,aj[24])s=a6(a7,s,t,aa,ab,ai[9],5,aj[25])ab=a6(a7,ab,s,t,aa,ai[14],9,aj[26])aa=a6(a7,aa,ab,s,t,ai[3],14,aj[27])t=a6(a7,t,aa,ab,s,ai[8],20,aj[28])s=a6(a7,s,t,aa,ab,ai[13],5,aj[29])ab=a6(a7,ab,s,t,aa,ai[2],9,aj[30])aa=a6(a7,aa,ab,s,t,ai[7],14,aj[31])t=a6(a7,t,aa,ab,s,ai[12],20,aj[32])s=a6(a8,s,t,aa,ab,ai[5],4,aj[33])ab=a6(a8,ab,s,t,aa,ai[8],11,aj[34])aa=a6(a8,aa,ab,s,t,ai[11],16,aj[35])t=a6(a8,t,aa,ab,s,ai[14],23,aj[36])s=a6(a8,s,t,aa,ab,ai[1],4,aj[37])ab=a6(a8,ab,s,t,aa,ai[4],11,aj[38])aa=a6(a8,aa,ab,s,t,ai[7],16,aj[39])t=a6(a8,t,aa,ab,s,ai[10],23,aj[40])s=a6(a8,s,t,aa,ab,ai[13],4,aj[41])ab=a6(a8,ab,s,t,aa,ai[0],11,aj[42])aa=a6(a8,aa,ab,s,t,ai[3],16,aj[43])t=a6(a8,t,aa,ab,s,ai[6],23,aj[44])s=a6(a8,s,t,aa,ab,ai[9],4,aj[45])ab=a6(a8,ab,s,t,aa,ai[12],11,aj[46])aa=a6(a8,aa,ab,s,t,ai[15],16,aj[47])t=a6(a8,t,aa,ab,s,ai[2],23,aj[48])s=a6(y,s,t,aa,ab,ai[0],6,aj[49])ab=a6(y,ab,s,t,aa,ai[7],10,aj[50])aa=a6(y,aa,ab,s,t,ai[14],15,aj[51])t=a6(y,t,aa,ab,s,ai[5],21,aj[52])s=a6(y,s,t,aa,ab,ai[12],6,aj[53])ab=a6(y,ab,s,t,aa,ai[3],10,aj[54])aa=a6(y,aa,ab,s,t,ai[10],15,aj[55])t=a6(y,t,aa,ab,s,ai[1],21,aj[56])s=a6(y,s,t,aa,ab,ai[8],6,aj[57])ab=a6(y,ab,s,t,aa,ai[15],10,aj[58])aa=a6(y,aa,ab,s,t,ai[6],15,aj[59])t=a6(y,t,aa,ab,s,ai[13],21,aj[60])s=a6(y,s,t,aa,ab,ai[4],6,aj[61])ab=a6(y,ab,s,t,aa,ai[11],10,aj[62])aa=a6(y,aa,ab,s,t,ai[2],15,aj[63])t=a6(y,t,aa,ab,s,ai[9],21,aj[64])return h(ae+s,0xFFFFFFFF),h(af+t,0xFFFFFFFF),h(ag+aa,0xFFFFFFFF),h(ah+ab,0xFFFFFFFF)end;function MD5(P)local ak=#P;local al=56-ak%64;if ak%64>56 then al=al+64 end;if al==0 then al=64 end;P=P..b(128)..e(b(0),al-1)..O(8*ak)..O(0)assert(#P%64==0)local aj=a3;local s,t,aa,ab=aj[65],aj[66],aj[67],aj[68]for am=1,#P,64 do local ai=T(f(P,am,am+63),4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4)assert(#ai==16)ai[0]=table.remove(ai,1)s,t,aa,ab=ad(s,t,aa,ab,ai)end;return d("%08x%08x%08x%08x",X(s),X(t),X(aa),X(ab))end end

-- String generator function
local function randomstring(n)
	math.randomseed(n)
	local length = random(5, 15)
	local chars = {'i', 'l', 'I'}
	local string = {}
	for i = 1, length do
		local a = chars[random(1, #chars)]
		insert(string, a)
	end
	return concat(string)
end

-- Convert to bytecode
os.execute("luac -s " .. arg[1])

-- Convert to written bytecode
local luac = io.open('luac.out', 'rb'):read('*all')
local code = {}

for i = 1, #luac do
	insert(code, '\\')
  insert(code, byte(luac, i))
end

-- Read the LBI + Edit certain variables
local ABC, ABx, AsBx = random(1, 5), random(1, 5), random(1, 5)

local lbi = io.open('template.out', 'rb'):read('*all')
:gsub('variable:bytecode', concat(code)) -- Replace with bytecode
:gsub('0x1A', '0x'..tostr(ABC)) -- Replace opcode type: ABC
:gsub('0x2A', '0x'..tostr(ABx)) -- Replace opcode type: ABx
:gsub('0x3A', '0x'..tostr(AsBx)) -- Replace opcode type: AsBx
:gsub('variable:protoindex:1', randomstring(1)) -- Replace proto index: .numupvals
:gsub('variable:protoindex:2', randomstring(2)) -- Replace proto index: .e
:gsub('variable:protoindex:3', randomstring(3)) -- Replace proto index: .a
:gsub('variable:protoindex:4', randomstring(4)) -- Replace proto index: .const
:gsub('variable:dataindex:1', randomstring(5)) -- Replace data index: is_KB
:gsub('variable:dataindex:2', randomstring(6)) -- Replace data index: is_KC
:gsub('variable:dataindex:3', randomstring(7)) -- Replace data index: is_K
:gsub('variable:datakey:1', randomstring(8)) -- Replace data key: value
:gsub('variable:datakey:2', randomstring(9)) -- Replace data key: op
:gsub('variable:datakey:3', randomstring(10)) -- Replace data key: A


-- Write to file
local final = io.open ('output\\output.txt', 'wb')
final:write(lbi)
final:close()

-- Minify LBI
os.execute('node minify.js')

-- Open new minified file
local lbi = io.open('output\\output.txt', 'rb'):read('*all')

-- Apply Signature + Edit certain variables
local sig = Signature
:gsub('variable:vmhash', MD5(lbi))

lbi = sig .. '\n' .. lbi

-- Re-write to file
local final = io.open ('output\\output.txt', 'wb')
final:write(lbi)
final:close()

-- Remove bytecode file
os.remove('luac.out')

-- Print
print('Finished :)')
