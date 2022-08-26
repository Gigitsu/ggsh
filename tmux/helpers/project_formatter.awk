function format(path) {
  path = substr(path, length(prefix) + 1)

  n_path_parts=split(path, path_parts, "/")
  n_domain_parts=split(path_parts[1], domain_parts, ".")

  domain = (domain_parts[n_domain_parts - 1] "." domain_parts[n_domain_parts])
  repo = substr(path, length(path_parts[1]) + length(path_parts[2]) + 3)
  user = path_parts[2]

  return user "@" domain ":" repo
}
{print $0, format($0)}