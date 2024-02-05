#!/bin/bash
# SPDX-FileCopyrightText: 2023 Tomohiro Hayashi s19c1094hn@s.chibakoudai.jp
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line ${1}
	res=1
}

res=0


out=$(./plus_cal < test/testdata)

[ "${out}" = "Enter first number:Enter second number:Select operator(+, -, *, /):5" ]||ng ${LINENO}

###strange input###
out=$(./plus_cal < test/testdata2)
[ "$?" = 1 ]					|| ng ${LINENO}
[ "${out}" = "First_number:" ]	|| ng ${LINENO}

out=$(./plus_cal < test/testdata3)
[ "$?" = 1 ]								|| ng ${LINENO}
[ "${out}" = "First_number:Second_number:" ]	|| ng ${LINENO}

out=$(./plus_cal < test/testdata4)
[ "$?" = 0 ]					|| ng ${LINENO}
[ "${out}" = "First_number:Second_number:Operator:Please_try_again" ]	|| ng ${LINENO}




[ "$res" = 0 ] && echo OK
exit $res