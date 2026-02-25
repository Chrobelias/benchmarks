(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (re.++ (re.* (str.to_re "5")) (re.range "5" "7")))))
(assert (str.in_re y (re.union (re.++ (str.to_re "3") (re.* (str.to_re "0"))) (re.range "3" "8"))))
(assert (str.in_re z (re.union (re.range "1" "3") (re.+ (re.union (re.range "4" "8") (str.to_re "85"))))))

(assert (< (+ (* 5 (str.len x)) (* (- 6) (str.len y)) (* (- 5) (str.len z))) 44))
(assert (<= (+ (* 4 (str.to_int x)) (* (- 2) (str.to_int y)) (* 6 (str.to_int z))) 90))

(check-sat)