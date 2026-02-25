(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "87" y) (str.++ "87" x)))

(assert (str.in_re x (re.* (re.union (str.to_re "730") (re.* (str.to_re "6"))))))
(assert (str.in_re y (re.union (re.++ (str.to_re "119") (re.range "6" "9")) (re.+ (re.range "3" "7")))))

(assert (> (+ (* (- 4) (str.len y)) (str.to_int x)) 33))
(assert (> (+ (* (- 2) (str.len x)) (* (- 9) (str.len y))) 36))

(check-sat)