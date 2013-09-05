local are_they_valid = {
  "___",     -- this is ok
  "_end",    -- this is ok
  "End",     -- this is ok
  "end",     -- reserved keyword 
  "until?",  -- Question marks not allowed
  "nil",     -- reserved keyword
  "NULL"     -- this is ok
}

for i,identifier in pairs(are_they_valid) do
  local chunk = ('%s = 1'):format(identifier)
  local _, res, err = pcall(load,chunk)
  print(('\n%0d. Testing assignment : "%s"\n  >> status: %s %s')
    :format(i,
      chunk,
      res and 'PASSED\n' or 'FAILED\n',
      res and '' or (' >> %s'):format(err)
     )
  )
end

