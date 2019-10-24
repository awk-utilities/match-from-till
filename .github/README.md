## Match From Till
[heading__title]:
  #match-from-till
  "&#x2B06; Top of ReadMe File"


Awk script that outputs multi-line or single-line `--from` `--till` matches


## [![Byte size of match-from-till][badge__master__match_from_till__source_code]][match_from_till__master__source_code] [![Open Issues][badge__issues__match_from_till]][issues__match_from_till] [![Open Pull Requests][badge__pull_requests__match_from_till]][pull_requests__match_from_till] [![Latest commits][badge__commits__match_from_till__master]][commits__match_from_till__master]


------


#### Table of Contents


- [:arrow_up: Top of ReadMe File][heading__title]

- [:building_construction: Requirements][heading__requirements]

- [:zap: Quick Start][heading__quick_start]

- [&#x1F5D2; Notes][notes]

- [:card_index: Attribution][heading__attribution]

- [:balance_scale: License][heading__license]


------



## Requirements
[heading__requirements]:
  #requirements
  "&#x1F3D7; What is needed prior to making use of this repository"


Awk or GAwk installed and executable under `/usr/bin/awk` file path.


___


## Quick Start
[heading__quick_start]:
  #quick-start
  "&#9889; Perhaps as easy as one, 2.0,..."


Download the source code of this repository...


```Bash
_downloads_path="${HOME}/git/hub/awk-utilities"

mkdir -vp "${_downloads_path}"
cd "${_downloads_path}"

git clone git@github.com:awk-utilities/match-from-till.git
```


Symbolically link to `PATH` accessible location...


```Bash
_script_path="${_downloads_path}/match-from-till/match-from-till.awk"

ln -s ${_script_path} ${HOME}/bin/
```


Parse files with `--from=` `--till=` command line options and any number of files...


```Bash
match-from-till.awk --from="start" --till="end" file-one.ext file-two.ext...
```


___


## Notes
[notes]:
  #notes
  "&#x1F5D2; Additional notes and links that may be worth clicking in the future"


This script buffers lines between `--from` and `--till` matches; memory enough to handle the largest match is likely needed, and multi-file inputs may cause matching across document breaks


------


Lines are matched with `~` allowing for patterns to be passed with the `--from` and `--till` options...


```Bash
match-from-till.awk --from="^start" --till="^end" <<EOF
start
middle
end

start middle end
EOF
```


------


This project is not feature complete but does function; Pull Requests and Issues are welcomed regarding what features need to be added.


___


## Attribution
[heading__attribution]:
  #attribution
  "&#x1F4C7; Resources that where helpful in building this project so far."


- https://www.gnu.org/software/gawk/manual/html_node/Truth-Values.html

- https://www.gnu.org/software/gawk/manual/html_node/Boolean-Ops.html

- https://www.gnu.org/software/gawk/manual/html_node/Delete.html

- https://www.gnu.org/software/gawk/manual/html_node/ARGC-and-ARGV.html#ARGC-and-ARGV

- https://www.unix.com/shell-programming-and-scripting/242764-begin-end-blocks-awk-confused.html

- https://www.linuxquestions.org/questions/programming-9/how-to-read-a-file-inside-awk-874908/


___


## License
[heading__license]:
  #license
  "&#x2696; Legal bits of Open Source software"


Legal bits of Open Source software


```
Match From Till documentation
Copyright (C) 2019  S0AndS0

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation; version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
```



[badge__commits__match_from_till__master]:
  https://img.shields.io/github/last-commit/awk-utilities/match-from-till/master.svg

[commits__match_from_till__master]:
  https://github.com/awk-utilities/match-from-till/commits/master
  "&#x1F4DD; History of changes on this branch"


[match_from_till__community]:
  https://github.com/awk-utilities/match-from-till/community
  "&#x1F331; Dedicated to functioning code"


[badge__issues__match_from_till]:
  https://img.shields.io/github/issues/awk-utilities/match-from-till.svg

[issues__match_from_till]:
  https://github.com/awk-utilities/match-from-till/issues
  "&#x2622; Search for and _bump_ existing issues or open new issues for project maintainer to address."


[badge__pull_requests__match_from_till]:
  https://img.shields.io/github/issues-pr/awk-utilities/match-from-till.svg

[pull_requests__match_from_till]:
  https://github.com/awk-utilities/match-from-till/pulls
  "&#x1F3D7; Pull Request friendly, though please check the Community guidelines"


[badge__master__match_from_till__source_code]:
  https://img.shields.io/github/repo-size/awk-utilities/match-from-till

[match_from_till__master__source_code]:
  https://github.com/awk-utilities/match-from-till
  "&#x2328; Project source code!"
