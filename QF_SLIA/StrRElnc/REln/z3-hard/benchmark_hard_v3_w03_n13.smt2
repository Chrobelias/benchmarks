(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.+ (re.union (re.range "6" "9") (re.* (str.to_re "52"))))))
(assert (str.in_re x (re.* (str.to_re "57"))))
(assert (str.in_re y (re.union (re.union (str.to_re "561") (re.++ (re.+ (str.to_re "546")) (str.to_re "5"))) (str.to_re "19"))))

(assert (<= (+ (* (- 6) (str.to_int x)) (* 10 (str.to_int y)) (* 3 (str.to_int z))) 45))
(assert (< (+ (* 6 (str.len y)) (* 4 (str.to_int z))) 30))

(check-sat)