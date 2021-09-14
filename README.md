# Packager-tools

packager-tools is a set of scripts and aliases made for openSUSE packagers.

## Scripts

### `run-quilt`

Automatically run `quilt` on the spec file of the current project. It also install any
macro package that the spec file requires (otherwisee `quilt` stop working). It also tries
to skip line that generates error. Depends on `osutil`.

```
$ run-quilt
```

### `run-spec-cleaner`

Run `spec-cleaner`, and review its changes before applying them. Depends on `git-delta`.

```
danyspin97 in OpenSUSE/Base:System/cronie
➜ run-spec-cleaner

cronie.spec ⟶   tmp/cronie.spec.new
────────────────────────────────────────────────────────────────────────────────────────────

───────────────────────────────────────┐
58: BuildRequires:  pkgconfig(systemd) │
───────────────────────────────────────┘
│ 58 │Requires:       mail                    │ 58 │Requires:       mail
│ 59 │Requires(post): %fillup_prereq          │ 59 │Requires(post): %fillup_prereq
│ 60 │Requires(post): debianutils             │ 60 │Requires(post): debianutils
│ 61 │Requires(pre):  cron                    │    │
│ 62 │Requires(post): permissions             │ 61 │Requires(post): permissions
│    │                                        │ 62 │Requires(pre):  cron
│ 63 │Suggests:       mailx                   │ 63 │Suggests:       mailx
│ 64 │Conflicts:      cron <= 4.1             │ 64 │Conflicts:      cron <= 4.1
│ 65 │%{?systemd_requires}                    │ 65 │%{?systemd_requires}
Accept changes [y/n]
y
Specfile updated!
```

### `unpack-rpm`

Unpack a provided `rpm` in a temporary folder under `/tmp/`.

```
$ unpack-rpm /var/src/mypkg.noarch.rpm
253701 blocks
Unpacked to /tmp/tmp.Cp4dd3TOti
```
