plugin_root=$(dirname $0)


plugin_path="$plugin_root/plugins/"
plugin_tmux_files="$plugin_path*.tmux"
for tmux_file in $plugin_tmux_files; do
  # runs *.tmux file as an executable
  $tmux_file $plugin_root >/dev/null 2>&1
done
