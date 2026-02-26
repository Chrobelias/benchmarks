(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))

(assert (= z (str.++ y "60" x)))

(assert (str.in_re z (re.union (re.* (re.range "0" "8")) (re.* (str.to_re "7")))))
(assert (str.in_re x (re.union (re.+ (str.to_re "7")) (str.to_re "377"))))
(assert (str.in_re y (re.* (re.union (str.to_re "540") (re.* (re.+ (re.range "3" "6")))))))

(assert (<= (+ (* (- 3) (str.len x)) (* (- 9) (str.len y)) (* 6 (str.len z))) 98))
(assert (< (+ (* 6 (str.len x)) (* (- 9) (str.to_int x)) (* 5 (str.to_int y))) 23))

(check-sat)