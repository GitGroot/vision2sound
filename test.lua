local rnnlib = require 'rnnlib'
local mutils = require 'rnnlib.mutils'
require 'nn'
local lstm = nn.LSTM{ inputsize = 256, hidsize = 512, nlayer = 3, usecudnn = false }
local model = nn.Sequential()
:add(mutils.batchedinmodule(lstm, nn.Identity()))
--:add(nn.SelectTable(2))
--:add(nn.SelectTable(-1))
--:add(nn.JoinTable(1))
--:add(decoder)
lstm:initializeHidden(32)
print(model:forward({lstm.hiddenbuffer, torch.rand(5,32,256)}))

