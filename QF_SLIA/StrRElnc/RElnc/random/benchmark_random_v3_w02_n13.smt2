(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ x y "74" "85")))

(assert (str.in_re z (re.union (re.range "1" "8") (re.+ (re.union (str.to_re "128") (re.range "1" "8"))))))
(assert (str.in_re y (re.union (str.to_re "8") (re.* (str.to_re "397")))))
(assert (str.in_re x (re.union (re.* (str.to_re "22")) (str.to_re "3"))))

(assert (< (+ (* (- 2) (str.len y)) (* (- 10) (str.to_int x)) (* 5 (str.to_int y))) 33))

(check-sat)