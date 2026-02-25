(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "74" y)))

(assert (str.in_re y (re.union (re.range "7" "9") (re.+ (re.union (str.to_re "3") (str.to_re "48"))))))
(assert (str.in_re x (re.+ (re.* (re.union (re.range "1" "8") (str.to_re "95"))))))

(assert (<= (+ (* (- 3) (str.len y)) (* 2 (str.to_int y))) 42))
(assert (>= (+ (* (- 5) (str.len x)) (* (- 5) (str.len y))) 36))

(check-sat)