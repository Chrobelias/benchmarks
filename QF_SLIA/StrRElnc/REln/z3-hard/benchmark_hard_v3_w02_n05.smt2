(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (re.union (re.range "5" "8") (re.* (re.* (str.to_re "204")))))))
(assert (str.in_re z (re.union (re.* (re.range "0" "8")) (re.* (re.+ (str.to_re "9"))))))
(assert (str.in_re y (re.+ (re.union (str.to_re "32") (str.to_re "457")))))

(assert (= (+ (* (- 8) (str.len x)) (* (- 3) (str.len y)) (* 4 (str.len z))) 20))
(assert (<= (+ (* 6 (str.to_int y)) (* 4 (str.to_int z))) 69))

(check-sat)