to_remove = [ARGV.first, *`brew deps #{ARGV.first}`.split]
pkg_count = `brew list`.split.count
while (
  still_installed = to_remove & `brew list`.split
  still_installed.each { |pkg| system "brew uninstall #{pkg} 2>/dev/null" }
  pkg_count_old = pkg_count
  pkg_count = `brew list`.split.count
  pkg_count != pkg_count_old
) do end
