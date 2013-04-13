## MANAGED BY PUPPET ##
# /etc/cshrc
#
# csh configuration for all shell invocations.

# By default, we want this to get set.
# Even for non-interactive, non-login shells.
# Current threshold for system reserved uid/gids is 200
# You could check uidgid reservation validity in
# /usr/share/doc/setup-*/uidgid file
if ($uid > 199 && "`id -gn`" == "`id -un`") then
    umask 077
else
    umask 077
endif

if ($?prompt) then
  if ($?tcsh) then
    set promptchars='$#'
    set prompt='[%n@%m %c]%# '
    # make completion work better by default
    set autolist
  else
    set prompt=\[$user@`hostname -s`\]\$\ 
  endif
endif

if ( $?tcsh ) then
	bindkey "^[[3~" delete-char
endif

bindkey "^R" i-search-back
set echo_style = both
set histdup = erase
set savehist = (1024 merge)

if ($?prompt) then
  if ($?TERM) then
    switch($TERM)
      case xterm*:
        if ($?tcsh) then
	  set prompt='%{\033]0;%n@%m:%c\007%}[%n@%m %c]%# '
        endif
        breaksw
      case screen:
        if ($?tcsh) then
          set prompt='%{\033_%n@%m:%c\033\\%}[%n@%m %c]%# '
        endif
        breaksw
      default:
        breaksw
    endsw
  endif
endif

setenv MAIL "/var/spool/mail/$USER"

# Check if we aren't a loginshell and do stuff if we aren't
if (! $?loginsh) then
    if ( -d /etc/profile.d ) then
        set nonomatch
        foreach i ( /etc/profile.d/*.csh )
            if ( -r "$i" ) then
                if ($?prompt) then
                    source "$i"
                else
                    source "$i" >&/dev/null
                endif
            endif
        end
        unset i nonomatch
    endif
endif
