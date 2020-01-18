library(httr)

info <- GET('https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pmc&id=4304705')
content <- paste0(info$content, collapse = ' ')
write(info$content[1:100], file = 'data.txt', append = FALSE)
Encoding(content) <- 'bytes'
iconv(content, "unknown", "bytes")
Encoding(paste0(info$content, collapse = ''))
Encoding(content)

strtoi(content, 2)
as.hexmode(content)

readBin('data.txt', character(), endian = 'big')

readBin