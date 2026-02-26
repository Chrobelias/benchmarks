(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y z) (str.++ "43" x)))

(assert (str.in_re x (re.* (re.union (str.to_re "72") (re.range "2" "4")))))
(assert (str.in_re y (re.union (re.* (re.union (str.to_re "1") (str.to_re "432"))) (str.to_re "24"))))
(assert (str.in_re z (re.* (re.union (re.range "4" "6") (re.range "3" "7")))))

(assert (> (+ (* (- 5) (str.to_int x)) (* (- 4) (str.to_int y)) (* 7 (str.to_int z))) 7))
(assert (> (+ (* 6 (str.len x)) (* (- 8) (str.len y)) (* 8 (str.len z))) 93))
(assert (> (+ (* (- 7) (str.len x)) (* (- 9) (str.len y)) (* (- 6) (str.len z))) 94))

(check-sat)