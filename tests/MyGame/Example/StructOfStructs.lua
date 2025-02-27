--[[ MyGame.Example.StructOfStructs

  Automatically generated by the FlatBuffers compiler, do not modify.
  Or modify. I'm a message, not a cop.

  flatc version: 25.2.10

  Declared by  : //monster_test.fbs
  Rooting type : MyGame.Example.Monster (//monster_test.fbs)

--]]

local flatbuffers = require('flatbuffers')

local StructOfStructs = {}
local mt = {}

function StructOfStructs.New()
  local o = {}
  setmetatable(o, {__index = mt})
  return o
end

function mt:Init(buf, pos)
  self.view = flatbuffers.view.New(buf, pos)
end

function mt:A(obj)
  obj:Init(self.view.bytes, self.view.pos + 0)
  return obj
end

function mt:B(obj)
  obj:Init(self.view.bytes, self.view.pos + 8)
  return obj
end

function mt:C(obj)
  obj:Init(self.view.bytes, self.view.pos + 12)
  return obj
end

function StructOfStructs.CreateStructOfStructs(builder, a_id, a_distance, b_a, b_b, c_id, c_distance)
  builder:Prep(4, 20)
  builder:Prep(4, 8)
  builder:PrependUint32(c_distance)
  builder:PrependUint32(c_id)
  builder:Prep(2, 4)
  builder:Pad(1)
  builder:PrependInt8(b_b)
  builder:PrependInt16(b_a)
  builder:Prep(4, 8)
  builder:PrependUint32(a_distance)
  builder:PrependUint32(a_id)
  return builder:Offset()
end

return StructOfStructs