(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re a (re.* (re.range "7" "9"))))
(assert (str.in_re z (re.* (str.to_re "8"))))
(assert (str.in_re x (re.union (re.+ (re.union (str.to_re "3") (str.to_re "57"))) (str.to_re "15"))))
(assert (str.in_re y (re.+ (str.to_re "140"))))

(assert (>= (+ (* 9 (str.len a)) (* (- 9) (str.to_int z))) 46))

(check-sat)