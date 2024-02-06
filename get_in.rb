data = { an_outer: "hash",
  with_another: {
    inner: "hash",
    and_another: {
      inside: "that"
    }
  }
}

def get_in(hash_input, keys)
  hash = hash_input
  keys.each do |key|
    hash = hash.values_at(key).first
  end
  hash
end

p get_in(data, [:with_another, :and_another, :inside])