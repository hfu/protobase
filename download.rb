while gets
  (url, fn) = $_.strip.split(',')
  next if url.nil?
  print <<-EOS
curl --location --continue-at - -o pmtiles/#{fn} #{url}
  EOS
end

