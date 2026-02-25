(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (re.* (re.++ (str.to_re "94") (re.+ (str.to_re "61")))))))
(assert (str.in_re y (re.++ (re.range "2" "8") (re.+ (re.range "1" "6")))))

(assert (= (+ (* (- 10) (str.len x)) (* 2 (str.to_int x)) (* (- 3) (str.to_int y))) 88))
(assert (<= (+ (* (- 3) (str.len x)) (* 9 (str.to_int y))) 98))

(check-sat)