-- for 3 dimention duplicate
function duplicate(tensor, times)
    tensor1 = tensor:view(tensor:size(1), tensor:size(2), 1, tensor:size(3))
    tensor1 = tensor1:contiguous()
    tensor1 = torch.expand(tensor1, tensor1:size(1), tensor1:size(2), times, tensor1:size(4))
    tensor1 = tensor1:contiguous():view(tensor1:size(1), tensor1:size(2)*times, tensor1:size(4))
    return tensor1:contiguous()
end
