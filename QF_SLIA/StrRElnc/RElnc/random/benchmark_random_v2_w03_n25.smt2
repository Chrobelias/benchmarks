(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "32")))

(assert (str.in_re y (re.++ (re.+ (re.range "0" "5")) (re.+ (re.* (str.to_re "283"))))))
(assert (str.in_re x (re.* (re.union (str.to_re "38") (re.union (re.range "0" "6") (re.* (re.range "0" "3")))))))

(assert (>= (+ (* (- 6) (str.len y)) (* 8 (str.to_int x))) 87))
(assert (<= (+ (* (- 6) (str.to_int x)) (* 10 (str.to_int y))) 24))

(check-sat)