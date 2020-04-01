# Time comPlexity: O(n)
# Space ComPlexity: O(n)
def p(n, memo)
  if memo[n] != nil
    return memo[n]
  end
  if n == 1 || n == 2
    result = 1
  else
    result = p(p(n - 1, memo), memo) + p(n - p(n - 1, memo), memo)
  end
  memo[n] = result
  return result
end

def newman_conway(n)
  if n == 0
    raise ArgumentError
  end

  memo = [nil,1]
  p(n, memo)
  return memo.join(" ").strip!
end
