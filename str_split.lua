function split(str, c, index)
    res = {''}
    for i = 1, string.len(str) do
        ch = string.sub(str,i,i)
        if(ch ~= c) then
            res[table.getn(res)] = res[table.getn(res)]..ch
        else
            table.insert(res, '')
        end
    end
    if index > 0 then
        return res[index]
    else
        return res[table.getn(res)+1+index]
    end
end
