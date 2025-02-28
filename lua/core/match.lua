-- match.lua
local match = {}

-- Function to validate and match IP addresses
function match.ip(str)
  local ip_pattern = "(%d+)%.(%d+)%.(%d+)%.(%d+)"
  local a, b, c, d = string.match(str, ip_pattern)

  if a and b and c and d then
    a, b, c, d = tonumber(a), tonumber(b), tonumber(c), tonumber(d)
    if a >= 0 and a <= 255 and b >= 0 and b <= 255 and c >= 0 and c <= 255 and d >= 0 and d <= 255 then
      return string.format("%d.%d.%d.%d", a, b, c, d)
    end
  end

  return nil
end

-- Function to match numbers
function match.number(str)
  local number_pattern = "%d+"
  return string.match(str, number_pattern)
end

-- Function to match Brazilian phone numbers
function match.phone(str)
  local phone_pattern1 = "%(%d%d%d%) %d%d%d%d%d%-%d%d%d%d"
  local phone_pattern2 = "%d%d%d %d%d%d%d%d%-%d%d%d%d"
  return string.match(str, phone_pattern1) or string.match(str, phone_pattern2)
end

-- Function to match email addresses
function match.email(str)
  local email_pattern = "[a-zA-Z0-9%.%-_]+@[a-zA-Z0-9%.%-_]+%.%a%a%a?"
  return string.match(str, email_pattern)
end

-- Function to match URLs
function match.url(str)
  local url_pattern = "https?://[%w%.%-_]+"
  return string.match(str, url_pattern)
end

-- Function to match dates (format: YYYY-MM-DD)
function match.date(str)
  local date_pattern = "%d%d%d%d%-%d%d%-%d%d"
  return string.match(str, date_pattern)
end

-- Function to extract matches from a given text using the provided match function
function match.extract(text, match_function)
  local matches = {}
  for word in string.gmatch(text, "%S+") do
    local match = match_function(word)
    if match then
      table.insert(matches, match)
    end
  end
  return table.concat(matches, "\n")
end

-- Function to extract matches from text and copy to clipboard
function match.extract_to_clipboard(match_function, selection)
  local text

  if selection then
    -- Get the visual selection range
    local start_pos = vim.fn.getpos("'<")
    local end_pos = vim.fn.getpos("'>")
    -- Get the selected lines
    local lines = vim.api.nvim_buf_get_lines(0, start_pos[2] - 1, end_pos[2], false)
    text = table.concat(lines, "\n")
  else
    -- Get the entire buffer text
    text = table.concat(vim.api.nvim_buf_get_lines(0, 0, -1, false), "\n")
  end

  -- Extract matches from the text
  local result = match.extract(text, match_function)

  -- Copy the result to the clipboard
  vim.fn.setreg("+", result)
  print("Matches copied to clipboard!")
end

-- Function to validate CPF
local function validate_cpf_digits(cpf, weights)
  local sum = 0
  for i = 1, #weights do
    sum = sum + tonumber(cpf:sub(i, i)) * weights[i]
  end
  local remainder = sum % 11
  return (remainder < 2) and 0 or (11 - remainder)
end

function match.validate_cpf(cpf)
  cpf = cpf:gsub("%D", "") -- Remove non-numeric characters
  if #cpf ~= 11 then
    return false
  end

  local first_digit = validate_cpf_digits(cpf, { 10, 9, 8, 7, 6, 5, 4, 3, 2 })
  local second_digit = validate_cpf_digits(cpf, { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 })

  return tonumber(cpf:sub(10, 10)) == first_digit and tonumber(cpf:sub(11, 11)) == second_digit
end

-- Function to match CPF
function match.cpf(str)
  local cpf_pattern = "%d%d%d%.%d%d%d%.%d%d%d%-%d%d"
  local cpf = string.match(str, cpf_pattern)
  if cpf and match.validate_cpf(cpf) then
    return cpf
  end
  return nil
end

return match
