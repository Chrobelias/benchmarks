(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re a (re.union (re.++ (str.to_re "42") (re.* (str.to_re "51"))) (re.+ (str.to_re "93")))))
(assert (str.in_re x (re.+ (str.to_re "133"))))
(assert (str.in_re z (re.++ (re.* (re.range "6" "9")) (re.++ (str.to_re "407") (re.* (str.to_re "741"))))))
(assert (str.in_re y (re.++ (re.union (re.* (str.to_re "2")) (str.to_re "94")) (re.* (re.range "3" "8")))))

(assert (< (+ (* (- 7) (str.len z)) (* 5 (str.to_int y))) 26))

(check-sat)