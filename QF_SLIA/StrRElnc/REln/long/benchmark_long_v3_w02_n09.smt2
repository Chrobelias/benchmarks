(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (str.in_re z (re.* (re.union (re.++ (str.to_re "195") (str.to_re "613")) (re.range "4" "6")))))
(assert (str.in_re x (re.+ (re.++ (re.* (str.to_re "263")) (re.range "6" "8")))))
(assert (str.in_re y (re.++ (str.to_re "71") (re.union (re.* (re.range "6" "9")) (str.to_re "82")))))

(assert (> (+ (* 4 (str.len x)) (* (- 6) (str.len y)) (* (- 5) (str.to_int x)) (* (- 8) (str.to_int z))) 98))

(check-sat)