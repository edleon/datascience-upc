cves.src <- tempfile(fileext = ".json")
download.file(url = "https://nvd.nist.gov/feeds/json/cve/1.1/nvdcve-1.1-recent.json.gz", destfile = cves.src)
raw.cves <- jsonlite::fromJSON(cves.src)
cves.raw <- raw.cves$CVE_Items$cve
conf.raw <- raw.cves$CVE_Items$configurations
impc.raw <- raw.cves$CVE_Items$impact