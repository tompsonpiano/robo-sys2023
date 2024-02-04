#!/bin/bash
# SPDX-FileCopyrightText: 2023 Tomohiro Hayashi s19c1094hn@s.chibakoudai.jp
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line ${1}
	res=1
}

res=0


out=$(./plus_cal < testdata)

[ "${out}" = First_number:Second_number:Operator:5 ]||ng ${LINENO}

###strange input###
out=$(./plus_cal < testdata2)
[ "$?" = 1 ]					|| ng ${LINENO}
[ "${out}" = First_number: ]	|| ng ${LINENO}


[ "$res" = 0 ] && echo OK
exit $res