function format(path) {
  gsub(/\/$/, "", prefix)
  path = substr(path, length(prefix) + 2) # + 1 because substr start is 1 based, + 1 for the missing trailing slash

  n_path_parts=split(path, path_parts, "/")
  n_domain_parts=split(path_parts[2], domain_parts, ".")

  domain = (domain_parts[n_domain_parts - 1] "." domain_parts[n_domain_parts])
  repo = substr(path, length(path_parts[1]) + length(path_parts[2]) + 3)
  user = path_parts[1]

  return user "@" domain "::" repo
}
{print $0, format($0)}