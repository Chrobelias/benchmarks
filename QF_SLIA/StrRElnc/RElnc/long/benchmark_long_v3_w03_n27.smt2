(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (= (str.++ z x) (str.++ "35" y)))

(assert (str.in_re y (re.++ (re.union (str.to_re "88") (re.* (re.range "7" "9"))) (str.to_re "281"))))
(assert (str.in_re x (re.* (re.union (str.to_re "744") (re.union (re.+ (str.to_re "48")) (re.range "1" "8"))))))
(assert (str.in_re z (re.++ (re.* (str.to_re "9")) (re.range "1" "4"))))

(assert (< (+ (* (- 8) (str.to_int x)) (* 9 (str.to_int y)) (* (- 8) (str.to_int z))) 97))
(assert (<= (+ (* 8 (str.len y)) (* (- 6) (str.to_int x))) 77))

(check-sat)