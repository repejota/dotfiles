function __promptline_git_changes {
    local changes=0
    if hash git 2>/dev/null; then
        changes=$( { git status -s --porcelain; } 2>/dev/null | wc -l)
        if [ $changes -gt -0 ]; then
            printf "%d " ${changes}
        fi
    fi
    return 1
}

# Check if we are in a git repo and get the branch name
function __promptline_git_branch {
  local branch
  local branch_symbol=" "
  local changes=0

  if hash git 2>/dev/null; then
    if branch=$( { git symbolic-ref --quiet HEAD || git rev-parse --short HEAD; } 2>/dev/null ); then
      branch=${branch##*/}
      printf "%s" "${branch_symbol}${branch:-unknown}"
      return
    fi
  fi
  return 1
}

function __promptline_cwd {
  local cwd="${PWD/#$HOME/~}"
  local dir_limit=3
  local parts
  local dir_sep="  "
  local truncation="⋯"

  # get first char of the path, i.e. tilda or slash
  local root_char=${cwd::1}

  # cleanup leading tilda and slash. replace slashes with spaces
  cwd="${cwd#\~}"
  cwd="${cwd#\/}"
  cwd=${cwd//\// }

  parts=($root_char $cwd)

  # truncate dirs to the limit
  local parts_count=${#parts[@]}
  if [ $parts_count -gt $dir_limit ] && [ $dir_limit -gt -0 ]; then
    parts=($truncation ${parts[@]:(-3)})
  fi

  # join the dirs with the separator
  local formatted_cwd=""
  for part in "${parts[@]}"; do
    formatted_cwd="$formatted_cwd$dir_sep$part"
  done;
  formatted_cwd="${formatted_cwd#$dir_sep}"

  printf "%s" "$formatted_cwd"
}

function __promptline_wrapper {
  # wrap the text in $1 with $2 and $3, only if $1 is not empty
  # $2 and $3 typically contain non-content-text, like color escape codes and separators

  [[ -n "$1" ]] || return 1
  printf "%s" "${2}${1}${3}"
}

# Builds a new prompt based on segments.
function __promptline_ps1 {
  local esc=$'['
  local end_esc=m
  local noprint='\['
  local end_noprint='\]'
  local wrap="$noprint$esc"
  local end_wrap="$end_esc$end_noprint"
  local space=" "
  local sep=""
  local alt_sep=""
  local reset="${wrap}0${end_wrap}"
  local reset_bg="${wrap}49${end_wrap}"

  local host_fg="${wrap}38;5;235${end_wrap}"
  local host_bg="${wrap}48;5;243${end_wrap}"
  local host_sep_fg="${wrap}38;5;243${end_wrap}"

  local cwd_fg="${wrap}38;5;250${end_wrap}"
  local cwd_bg="${wrap}48;5;239${end_wrap}"
  local cwd_sep_fg="${wrap}38;5;239${end_wrap}"

  local git_fg="${wrap}38;5;250${end_wrap}"
  local git_bg="${wrap}48;5;236${end_wrap}"
  local git_sep_fg="${wrap}38;5;236${end_wrap}"

  local slice_prefix
  local slice_empty_prefix
  local slice_joiner
  local slice_suffix
  local is_prompt_empty=1

  # section "hostname" header
  slice_prefix="${host_bg}${sep}${host_fg}${host_bg}${space}"
  slice_suffix="$space${host_sep_fg}"
  slice_joiner="${host_fg}${host_bg}${alt_sep}${space}"
  slice_empty_prefix="${host_fg}${host_bg}${space}"
  [ $is_prompt_empty -eq 1 ] && slice_prefix="$slice_empty_prefix"
  # section "hostname" slices
  __promptline_wrapper "$(printf "%s@%s" \\u \\h)" "$slice_prefix" "$slice_suffix" && { slice_prefix="$slice_joiner"; is_prompt_empty=0; }

  # section "cwd" header
  slice_prefix="${cwd_bg}${sep}${cwd_fg}${cwd_bg}${space}"
  slice_suffix="$space${cwd_sep_fg}"
  slice_joiner="${cwd_fg}${cwd_bg}${alt_sep}${space}"
  slice_empty_prefix="${cwd_fg}${cwd_bg}${space}"
  [ $is_prompt_empty -eq 1 ] && slice_prefix="$slice_empty_prefix"
  # section "cwd" slices
  __promptline_wrapper "$(__promptline_cwd)" "$slice_prefix" "$slice_suffix" && { slice_prefix="$slice_joiner"; is_prompt_empty=0; }

  # section "git" header
  slice_prefix="${git_bg}${sep}${git_fg}${git_bg}${space}"
  slice_suffix="$space${git_sep_fg}"
  slice_joiner="${git_fg}${git_bg}${alt_sep}${space}"
  slice_empty_prefix="${git_fg}${git_bg}${space}"
  [ $is_prompt_empty -eq 1 ] && slice_prefix="$slice_empty_prefix"
  # # section "git" slices
  __promptline_wrapper "$(__promptline_git_changes)$(__promptline_git_branch)" "$slice_prefix" "$slice_suffix" && { slice_prefix="$slice_joiner"; is_prompt_empty=0; }

  # close sections
  printf "%s" "${reset_bg}${sep}$reset$space"
}

# Main function
# Setups needed variables, shortcuts and builds a new prompt
function __promptline {
    PS1="$(__promptline_ps1)"
}

# Bash provides an environment variable called PROMPT_COMMAND. The contents
# of this variable are executed as a regular Bash command just before Bash
# displays a prompt.
PROMPT_COMMAND=__promptline
