#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Tomohiro Hayashi s19c1094hn@s.chibakoudai.jp
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line ${1}
	res=1
}

res=0


out=$(./plus_cal < testdata)

[ "${out}" = First_number:Second_number:Operator:5 ]||ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res