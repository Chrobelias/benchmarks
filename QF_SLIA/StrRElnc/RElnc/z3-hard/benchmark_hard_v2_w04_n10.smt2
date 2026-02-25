(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "86")))

(assert (str.in_re x (re.union (re.range "3" "8") (re.++ (str.to_re "642") (re.* (str.to_re "543"))))))
(assert (str.in_re y (re.union (re.* (re.range "0" "8")) (re.union (str.to_re "94") (re.+ (str.to_re "71"))))))

(assert (<= (+ (str.to_int x) (* (- 7) (str.to_int y))) 65))
(assert (> (+ (* 7 (str.len x)) (* (- 5) (str.len y))) 20))
(assert (= (+ (* 9 (str.len x)) (* 9 (str.to_int x)) (* (- 6) (str.to_int y))) 96))

(check-sat)