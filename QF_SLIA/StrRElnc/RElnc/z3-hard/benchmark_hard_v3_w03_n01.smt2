(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ "79" z)))

(assert (str.in_re y (re.* (re.union (str.to_re "7") (re.range "4" "9")))))
(assert (str.in_re x (re.* (re.* (re.+ (re.range "7" "9"))))))
(assert (str.in_re z (re.* (re.union (re.* (re.* (str.to_re "8"))) (str.to_re "74")))))

(assert (= (+ (* 5 (str.to_int x)) (* (- 2) (str.to_int y)) (* 7 (str.to_int z))) 61))
(assert (>= (+ (* 7 (str.len x)) (* (- 2) (str.len y)) (* (- 9) (str.len z))) 48))
(assert (< (+ (* (- 5) (str.to_int x)) (* (- 7) (str.to_int y)) (* (- 7) (str.to_int z))) 33))

(check-sat)