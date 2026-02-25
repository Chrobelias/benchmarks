(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= y (str.++ x "54")))

(assert (str.in_re x (re.+ (re.union (str.to_re "940") (re.+ (re.range "4" "7"))))))
(assert (str.in_re y (re.+ (re.union (re.range "4" "7") (str.to_re "129")))))

(assert (> (+ (* 7 (str.len x)) (* (- 8) (str.to_int x))) 79))
(assert (< (+ (* 9 (str.to_int x)) (* 7 (str.to_int y))) 28))
(assert (>= (+ (* (- 2) (str.len x)) (* 3 (str.len y))) 23))

(check-sat)