(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ x "22") (str.++ "90" y)))

(assert (str.in_re y (re.union (str.to_re "233") (re.union (re.+ (str.to_re "420")) (str.to_re "22")))))
(assert (str.in_re x (re.++ (re.+ (re.range "0" "9")) (re.* (re.* (str.to_re "67"))))))

(assert (< (+ (* (- 7) (str.len x)) (* (- 8) (str.to_int x)) (* (- 6) (str.to_int y))) 31))
(assert (>= (+ (* 9 (str.len x)) (* 10 (str.len y))) 71))

(check-sat)