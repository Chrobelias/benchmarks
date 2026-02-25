(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "62")))

(assert (str.in_re y (re.* (re.union (re.range "6" "9") (re.union (str.to_re "94") (re.range "0" "8"))))))
(assert (str.in_re x (re.+ (re.union (re.* (str.to_re "825")) (str.to_re "998")))))

(assert (<= (+ (* (- 3) (str.len y)) (str.to_int x)) 76))

(check-sat)