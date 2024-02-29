#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Tomohiro Hayashi s19c1094hn@s.chibakoudai.jp
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line ${1}
	res=1
}

res=0

###normal input###
out=$(./plus_cal < test/testdata)

[ "${out}" = "5" ]||ng ${LINENO}

###continue test###
out=$(./plus_cal < test/testdata5)

[ "${out}" = "5
50" ]	|| ng ${LINENO}
###clear command test###
out=$(./plus_cal < test/testdata6)

[ "${out}" = "5
20" ]	|| ng ${LINENO}

###strange input###
###first number error###
out=$(./plus_cal < test/testdata2)
[ "$?" = 1 ]					|| ng ${LINENO}
[ "${out}" = "" ]	|| ng ${LINENO}

###second number error###
out=$(./plus_cal < test/testdata3)
[ "$?" = 1 ]								|| ng ${LINENO}
[ "${out}" = "" ]	|| ng ${LINENO}

###operator error###
out=$(./plus_cal < test/testdata4)
[ "$?" = 0 ]					|| ng ${LINENO}
[ "${out}" = "error" ]	|| ng ${LINENO}




[ "$res" = 0 ] && echo OK
exit $res