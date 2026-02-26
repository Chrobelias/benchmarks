(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ "91" x y)))

(assert (str.in_re z (re.+ (re.range "0" "9"))))
(assert (str.in_re x (re.union (re.+ (str.to_re "330")) (re.+ (re.* (str.to_re "42"))))))
(assert (str.in_re y (re.union (re.union (str.to_re "35") (str.to_re "4")) (re.+ (re.range "1" "4")))))

(assert (<= (+ (* 8 (str.to_int y)) (* 5 (str.to_int z))) 55))
(assert (>= (+ (* 5 (str.len y)) (* 8 (str.len z))) 93))

(check-sat)