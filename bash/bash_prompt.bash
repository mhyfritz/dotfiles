# Original author: Artem Sapegin, sapegin.me 

prompt_symbol="└─"
prompt_clean_symbol="☀ "
prompt_dirty_symbol="☂ "
prompt_venv_symbol="⚔ "

function prompt_command() {
	# Local or SSH session?
	local remote=
	[ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ] && remote=1

	# Git branch name and work tree status (only when we are inside Git working tree)
	local git_prompt=
	if [[ "true" = "$(git rev-parse --is-inside-work-tree 2>/dev/null)" ]]; then
		# Branch name
		local branch="$(git symbolic-ref HEAD 2>/dev/null)"
		branch="${branch##refs/heads/}"

		# Working tree status
		local dirty=
		# Modified files
		git diff --no-ext-diff --quiet --exit-code --ignore-submodules 2>/dev/null || dirty=1
		# Untracked files
		[ -z "$dirty" ] && test -n "$(git status --porcelain)" && dirty=1

		# Format Git info
		if [ -n "$dirty" ]; then
			git_prompt=" $prompt_dirty_symbol$branch"
		else
			git_prompt=" $prompt_clean_symbol$branch"
		fi
	fi

	# Virtualenv
	local venv_prompt=
	if [ -n "$VIRTUAL_ENV" ]; then
	    venv_prompt=" prompt_venv_symbol$(basename $VIRTUAL_ENV)"
	fi

	local user_prompt="$USER"
	local host_prompt=
  [ -n "$remote" ] && host_prompt="@$HOSTNAME"
	local login_delimiter=":"

	# Format prompt
	first_line="$user_prompt$host_prompt$login_delimiter\w$git_prompt$venv_prompt"
	second_line="$prompt_symbol "
	PS1="\n$first_line\n$second_line"

	# Multiline command
	PS2="$prompt_symbol "

	# Terminal title
	local title="$(basename "$PWD")"
	[ -n "$remote" ] && title="$title \xE2\x80\x94 $HOSTNAME"
	echo -ne "\033]0;$title"; echo -ne "\007"
}

# Show prompt only if Git is istalled
command -v git >/dev/null 2>&1 && PROMPT_COMMAND=prompt_command
